import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PomodoroSummary extends StatelessWidget {
  final String pomodoroTitle;
  final String categoryTitle;
  final Color categoryColor;
  final DateTime startAt;
  final DateTime endAt;

  const PomodoroSummary({
    super.key,
    required this.pomodoroTitle,
    required this.categoryTitle,
    required this.categoryColor,
    required this.startAt,
    required this.endAt,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          categoryTitle,
          style: const TextStyle(
            fontSize: 28,
          ),
        ),
        ListTile(
          isThreeLine: true,
          title: Text(pomodoroTitle),
          subtitle: Text(
              '${DateFormat('yyyy/MM/dd').format(startAt)}\n${DateFormat('HH:mm').format(startAt)}~${DateFormat('HH:mm').format(endAt)}'),
          leading: Icon(
            Icons.circle,
            color: categoryColor,
            size: 24,
          ),
        ),
      ],
    );
  }
}
