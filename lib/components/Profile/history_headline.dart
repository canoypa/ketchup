import 'package:flutter/material.dart';
import 'package:ketchup/components/History/pomodoro_card.dart';

class HistoryHeadline extends StatelessWidget {
  const HistoryHeadline({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: const [
            Text(
              'これまでの頑張り',
              style: TextStyle(fontSize: 22),
            ),
            Spacer(),
            Text('全て表示'),
          ],
        ),
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
      ],
    );
  }
}
