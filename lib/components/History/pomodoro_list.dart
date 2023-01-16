import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ketchup/components/History/category_choice.dart';
import 'package:ketchup/components/History/pomodoro_card.dart';
import 'package:ketchup/models/pomodoro_info.dart';
import 'package:ketchup/repository/pomodoro.dart';

final pomodoroListState =
    FutureProvider.autoDispose<List<PomodoroInfo>>((ref) async {
  final categoryChoice = ref.watch(categoryChoiceState);

  return await PomodoroRepository.getCategoryData(category: categoryChoice);
});

class PomodoroList extends ConsumerWidget {
  const PomodoroList({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pomodoroList = ref.watch(pomodoroListState);

    return pomodoroList.when(
      data: (data) {
        return ListView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          children: [
            PomodoroCard(
              pomodoroTitle: 'データサイエンス',
              categoryTitle: '勉強',
              categoryColor: Colors.deepOrange.shade200,
              duration: const Duration(minutes: 80),
            ),
            PomodoroCard(
              pomodoroTitle: '機械学習',
              categoryTitle: '勉強',
              categoryColor: Colors.blue.shade200,
              duration: const Duration(minutes: 100),
            ),
            PomodoroCard(
              pomodoroTitle: 'なんか',
              categoryTitle: '読書',
              categoryColor: Colors.green.shade200,
              duration: const Duration(minutes: 0),
            ),
          ],
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
