import 'package:flutter/material.dart';
import 'package:ketchup/components/History/category_choice.dart';
import 'package:ketchup/components/History/pomodoro_list.dart';

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
      children: const [
        Text(
          'これまでの頑張り',
          style: TextStyle(
            fontSize: 28,
          ),
        ),
        SizedBox(height: 16),
        CategoryChoice(),
        SizedBox(height: 16),
        PomodoroList()
      ],
    );
  }
}
