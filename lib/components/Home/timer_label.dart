import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ketchup/models/pomodoro_category.dart';
import 'package:ketchup/repository/category.dart';
import 'package:ketchup/store/category/provider.dart';
import 'package:nanoid/nanoid.dart';

Widget _buildChoseCategoryDialog(BuildContext context) {
  return SimpleDialog(
    title: const Text('カテゴリーを選択'),
    children: [
      const SizedBox(
        width: double.maxFinite,
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
                Navigator.pop(context, 'が選択されました');
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

class AddCategoryField extends ConsumerWidget {
  final _inputController = TextEditingController();
  final _currentColor = Colors.indigo;

  AddCategoryField({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              // カラーピッカー表示と _currentColor の更新
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
              _inputController.clear();

              final category = PomodoroCategory(
                id: nanoid(16),
                title: _inputController.text,
                color: _currentColor,
              );
              CategoryRepository.categoryInsert(category);

              ref.invalidate(categoriesProvider);
            },
          ),
        ],
      ),
    );
  }
}
