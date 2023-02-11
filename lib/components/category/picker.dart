import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ketchup/core/constant.dart';
import 'package:ketchup/models/pomodoro_category.dart';
import 'package:ketchup/repository/category.dart';
import 'package:ketchup/store/category/provider.dart';
import 'package:nanoid/non_secure.dart';

Future<PomodoroCategory?> showCategoryPicker(BuildContext context) async {
  final selected = await showDialog<PomodoroCategory>(
    context: context,
    builder: _buildDialog,
  );

  return selected;
}

Widget _buildDialog(BuildContext context) {
  return const AlertDialog(
    title: Text('カテゴリーを選択'),
    content: SizedBox(
      width: double.maxFinite,
      child: _CategoryChose(),
    ),
    actions: [
      _AddCategoryField(),
    ],
  );
}

class _CategoryChose extends ConsumerWidget {
  const _CategoryChose();

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

class _AddCategoryField extends ConsumerStatefulWidget {
  const _AddCategoryField();

  @override
  _AddCategoryFieldState createState() => _AddCategoryFieldState();
}

class _AddCategoryFieldState extends ConsumerState<_AddCategoryField> {
  final _inputController = TextEditingController();

  Color _currentColor = appBrandColor;

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
