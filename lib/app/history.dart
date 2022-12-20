import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ketchup/components/History/category_choice.dart';
import 'package:ketchup/components/History/pomodoro_list.dart';
import 'package:ketchup/components/page_builder/page_builder.dart';

class HistoryPage extends PageBuilder {
  const HistoryPage();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
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
          Expanded(
            child: PomodoroList(),
          ),
        ],
      ),
    );
  }
}
