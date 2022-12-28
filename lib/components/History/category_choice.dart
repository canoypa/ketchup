import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final categoryChoiceState = StateProvider.autoDispose<String?>(
  (ref) => null,
);

final categoriesState = FutureProvider.autoDispose<List<String>>(
  (ref) async {
    return await Future.value(["勉強", "読書", "なんか"]);
  },
);

class CategoryChoice extends ConsumerWidget {
  const CategoryChoice({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categories = ref.watch(categoriesState);
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
                      category,
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                    selected: choseCategory == category,
                    onSelected: (b) {
                      ref.read(categoryChoiceState.notifier).state =
                          b ? category : null;
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