import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ketchup/store/category/provider.dart';

final categoryChoiceState = StateProvider.autoDispose<String?>(
  (ref) => null,
);

class CategoryChoice extends ConsumerWidget {
  const CategoryChoice({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categories = ref.watch(categoriesProvider);
    final choseCategory = ref.watch(categoryChoiceState);

    return categories.when(
      data: (categories) {
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: categories
                .map((category) {
                  return ChoiceChip(
                    label: Text(
                      category.title,
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                    selected: choseCategory == category.id,
                    onSelected: (b) {
                      ref.read(categoryChoiceState.notifier).state =
                          b ? category.id : null;
                    },
                  );
                })
                .expand((c) => [c, const SizedBox(width: 8)])
                .toList(),
          ),
        );
      },
      loading: () {
        return const SizedBox();
      },
      error: (error, stackTrace) {
        return const SizedBox();
      },
    );
  }
}
