import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ketchup/components/History/category_choice.dart';
import 'package:ketchup/components/History/pomodoro_card.dart';

final pomodoroListState =
    FutureProvider.autoDispose<List<dynamic>>((ref) async {
  final categoryChoice = ref.watch(categoryChoiceState);

  // TODO: 一覧取得する
  return await Future.value([]);
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
        return Flexible(
          child: ListView(
            children: [
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
