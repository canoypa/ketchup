import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ketchup/components/History/pomodoro_card.dart';

Page<dynamic> buildHistoryPage(context, state) {
  return CustomTransitionPage(
    key: state.pageKey,
    child: Scaffold(
      appBar: AppBar(),
      body: const History(),
    ),
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
        Row(
          children: const [
            _CategoryChip(categoryTitle: "勉強"),
            _CategoryChip(categoryTitle: "読書"),
            _CategoryChip(categoryTitle: "なんか"),
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

class _CategoryChip extends StatelessWidget {
  final String categoryTitle;

  const _CategoryChip({
    required this.categoryTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
      side: const BorderSide(width: 1, color: Color(0xff49454E)),
      backgroundColor: Colors.white,
      label: Text(
        categoryTitle,
        style: const TextStyle(fontSize: 14),
      ),
    );
  }
}
