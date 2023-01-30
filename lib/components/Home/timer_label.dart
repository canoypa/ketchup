import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ketchup/models/pomodoro_category.dart';
import 'package:ketchup/repository/category.dart';
import 'package:ketchup/store/category/provider.dart';
import 'package:ketchup/store/pomodoro/provider.dart';
import 'package:nanoid/nanoid.dart';

class TimerLabel extends ConsumerWidget {
  const TimerLabel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final timerState = ref.watch(pomodoroTimerProvider);
    final categories = ref.watch(categoriesProvider);

    final selectedCategory = categories.maybeMap(
        data: (data) {
          return data.value
              .firstWhereOrNull((e) => e.id == timerState.info.categoryId);
        },
        orElse: () => null);

    final bool isWaiting =
        timerState.maybeMap(waiting: (_) => true, orElse: () => false);

    return Column(
      children: [
        TextField(
          readOnly: !isWaiting,
          textAlign: TextAlign.center,
          decoration: const InputDecoration(
            hintText: "テキストを入力してください",
            border: InputBorder.none,
          ),
          onSubmitted: (value) {
            ref.read(pomodoroTimerProvider.notifier).setInfo(title: value);
          },
        ),
        const SizedBox(height: 8),
        InkWell(
          onTap: isWaiting
              ? () async {
                  final selectedCategory = await showDialog<PomodoroCategory>(
                      context: context, builder: _buildDialog);

                  if (selectedCategory != null) {
                    ref
                        .read(pomodoroTimerProvider.notifier)
                        .setInfo(categoryId: selectedCategory.id);
                  }
                }
              : null,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (selectedCategory != null)
                Icon(
                  Icons.circle,
                  color: selectedCategory.color,
                ),
              Text(
                selectedCategory?.title ?? "カテゴリーを選択",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}

Widget _buildDialog(BuildContext context) {
  return const SimpleDialog(
    title: Text('カテゴリーを選択'),
    children: [
      SizedBox(
        width: double.maxFinite,
        height: 200,
        child: CategoryChose(),
      ),
      AddCategoryField(),
    ],
  );
}

class CategoryChose extends ConsumerWidget {
  const CategoryChose({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categories = ref.watch(categoriesProvider);

    return categories.maybeMap(
      data: (data) {
        return ListView.builder(
          shrinkWrap: true,
          itemCount: data.value.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(
                Icons.circle,
                color: data.value[index].color,
              ),
              title: Text(data.value[index].title),
              onTap: () {
                Navigator.pop(context, data.value[index]);
              },
            );
          },
        );
      },
      orElse: () {
        return const SizedBox();
      },
    );
  }
}

class AddCategoryField extends ConsumerStatefulWidget {
  const AddCategoryField({super.key});

  @override
  _AddCategoryFieldState createState() => _AddCategoryFieldState();
}

class _AddCategoryFieldState extends ConsumerState<AddCategoryField> {
  final _inputController = TextEditingController();
  Color _currentColor = Colors.indigo;

  void changeColor(Color color) {
    setState(() => _currentColor = (color));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              // カラーピッカー表示と _currentColor の更新
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('表示する色を変更できます'),
                    content: SingleChildScrollView(
                      child: ColorPicker(
                        pickerColor: _currentColor,
                        onColorChanged: (color) {
                          setState(() {
                            _currentColor = color;
                          });
                        },
                      ),
                    ),
                    actions: <Widget>[
                      ElevatedButton(
                        child: const Text('変更'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            },
            child: Icon(
              Icons.circle,
              color: _currentColor,
            ),
          ),
          const SizedBox(width: 8),
          Flexible(
            child: TextField(
              controller: _inputController,
              decoration: const InputDecoration(
                hintText: "カテゴリーを追加",
                border: InputBorder.none,
              ),
            ),
          ),
          ElevatedButton(
            child: const Text("追加"),
            onPressed: () {
              final category = PomodoroCategory(
                id: nanoid(16),
                title: _inputController.text,
                color: _currentColor,
              );
              CategoryRepository.categoryInsert(category);

              _inputController.clear();
              ref.invalidate(categoriesProvider);
            },
          ),
        ],
      ),
    );
  }
}
