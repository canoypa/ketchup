import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ketchup/components/pomodoro/pomodoro_memo.dart';
import 'package:ketchup/components/pomodoro/pomodoro_summary.dart';

Page<dynamic> buildPomodoroPage(context, state) {
  return CustomTransitionPage(
    key: state.pageKey,
    child: const Pomodoro(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return SharedAxisTransition(
        animation: animation,
        secondaryAnimation: secondaryAnimation,
        transitionType: SharedAxisTransitionType.horizontal,
        child: child,
      );
    },
  );
}

class Pomodoro extends StatelessWidget {
  const Pomodoro({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
}
