import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ketchup/components/page_builder/page_builder.dart';
import 'package:ketchup/components/pomodoro/pomodoro_memo.dart';
import 'package:ketchup/components/pomodoro/pomodoro_summary.dart';
import 'package:ketchup/repository/pomodoro.dart';

class PomodoroPage extends PageBuilder {
  const PomodoroPage();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return Scaffold(
      body: _Page(
        pomodoroId: state.params["id"]!,
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

class _Page extends StatelessWidget {
  final String pomodoroId;

  const _Page({
    required this.pomodoroId,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: PomodoroRepository.getData(pomodoroId),
      builder: (context, snapshot) {
        return CustomScrollView(
          slivers: [
            SliverAppBar.large(
              title: Text(snapshot.data?.title ?? "無題"),
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
            SliverList(
              delegate: SliverChildListDelegate([
                if (snapshot.data != null)
                  PomodoroSummary(info: snapshot.data!),
                if (snapshot.data != null) Memo(pomodoroId: snapshot.data!.id),
              ]),
            )
          ],
        );
      },
    );
  }
}
