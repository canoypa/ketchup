import 'package:animations/animations.dart';
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
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: const Text("これまでの頑張り"),
          ),
          SliverList(
            delegate: SliverChildListDelegate(const [
              CategoryChoice(),
              SizedBox(height: 16),
              PomodoroList(),
            ]),
          ),
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
      transitionType: SharedAxisTransitionType.vertical,
      child: child,
    );
  }
}
