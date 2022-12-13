import 'package:flutter/material.dart';
import 'package:ketchup/components/History/category_choice.dart';
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
