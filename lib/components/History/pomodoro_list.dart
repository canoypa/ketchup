import 'package:flutter/material.dart';
import 'package:ketchup/components/History/pomodoro_card.dart';

class PomodoroList extends StatelessWidget {
  const PomodoroList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.value(), // TODO: 一覧取得する
      builder: (context, snapshot) {
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
    );
  }
}
