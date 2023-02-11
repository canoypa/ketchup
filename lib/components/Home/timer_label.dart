import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ketchup/components/category/picker.dart';
import 'package:ketchup/store/category/provider.dart';
import 'package:ketchup/store/pomodoro/provider.dart';

class TimerLabel extends ConsumerStatefulWidget {
  const TimerLabel({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return TimerLabelState();
  }
}

class TimerLabelState extends ConsumerState<TimerLabel> {
  final _titleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final timerState = ref.watch(pomodoroTimerProvider);
    final categories = ref.watch(categoriesProvider);

    // timerState とタイトルの同期 (これでいいのか？)
    _titleController.text = timerState.info.title ?? "";

    final selectedCategory = categories.maybeMap(
      data: (data) {
        return data.value.firstWhereOrNull(
          (e) => e.id == timerState.info.categoryId,
        );
      },
      orElse: () => null,
    );

    final bool isWaiting = timerState.maybeMap(
      waiting: (_) => true,
      orElse: () => false,
    );

    return Column(
      children: [
        TextField(
          controller: _titleController,
          readOnly: !isWaiting,
          textAlign: TextAlign.center,
          decoration: const InputDecoration(
            hintText: "タイトルを入力",
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
                  final selectedCategory = await showCategoryPicker(context);

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
              Visibility(
                visible: selectedCategory != null,
                child: Icon(
                  Icons.circle,
                  color: selectedCategory?.color,
                ),
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

  @override
  void dispose() {
    _titleController.dispose();
    super.dispose();
  }
}
