import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PomodoroCard extends StatelessWidget {
  final String pomodoroTitle;
  final String categoryTitle;
  final Color categoryColor;
  final int minute; // startAtとendAtから計算

  const PomodoroCard({
    super.key,
    required this.pomodoroTitle,
    required this.categoryTitle,
    required this.categoryColor,
    required this.minute,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: categoryColor,
      child: ListTile(
        title: Text(pomodoroTitle),
        subtitle: Text(categoryTitle),
        trailing: Text('${minute.toString()}分'),
        onTap: () {
          GoRouter.of(context).push("/pomodoro");
        },
      ),
    );
  }
}
