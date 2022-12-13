import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ketchup/components/History/pomodoro_card.dart';

Page<dynamic> buildHistoryPage(context, state) {
  return MaterialPage(
    child: Scaffold(
      appBar: AppBar(),
      body: const History(),
    ),
  );
}

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'これまでの頑張り',
          style: TextStyle(
            fontSize: 28,
          ),
        ),
        const CategoryChoice(),
        PomodoroCard(
          pomodoroTitle: 'データサイエンス',
          categoryTitle: '勉強',
          categoryColor: Colors.deepOrange.shade200,
          minute: 80,
        ),
        PomodoroCard(
          pomodoroTitle: '機械学習',
          categoryTitle: '勉強',
          categoryColor: Colors.blue.shade200,
          minute: 100,
        ),
        PomodoroCard(
          pomodoroTitle: 'なんか',
          categoryTitle: '読書',
          categoryColor: Colors.green.shade200,
          minute: 0,
        ),
      ],
    );
  }
}

final categoryChoiceState = StateProvider<String?>(
  (ref) => null,
);

final categoriesState = StateProvider<List<String>>(
  (ref) => ["勉強", "読書", "なんか"],
);

class CategoryChoice extends ConsumerWidget {
  const CategoryChoice({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categories = ref.watch(categoriesState);
    final choseCategory = ref.watch(categoryChoiceState);

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: categories.map((category) {
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
        }).toList(),
      ),
    );
  }
}
