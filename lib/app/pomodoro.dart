import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ketchup/components/page_builder/page_builder.dart';
import 'package:ketchup/components/pomodoro/pomodoro_memo.dart';
import 'package:ketchup/components/pomodoro/pomodoro_summary.dart';

class PomodoroPage extends PageBuilder {
  const PomodoroPage();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.edit_outlined),
            tooltip: '編集する',
            onPressed: () {
              ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(content: Text('編集')));
            },
          ),
        ],
      ),
      body: Column(
        children: [
          PomodoroSummary(
              pomodoroTitle: 'データサイエンス',
              categoryTitle: '勉強',
              categoryColor: Colors.pink.shade800,
              startAt: DateTime.parse('2022-10-10 12:00:00'),
              endAt: DateTime.parse('2022-10-10 13:00:00')),
          PomodoroMemo(),
        ],
      ),
    );
  }

  @override
  Widget transitionBuilder(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return SharedAxisTransition(
      animation: animation,
      secondaryAnimation: secondaryAnimation,
      transitionType: SharedAxisTransitionType.horizontal,
      child: child,
    );
  }
}
