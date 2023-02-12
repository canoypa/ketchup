import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ketchup/components/History/pomodoro_list.dart';
import 'package:ketchup/components/page_builder/page_builder.dart';
import 'package:ketchup/components/pomodoro/pomodoro_memo.dart';
import 'package:ketchup/components/pomodoro/pomodoro_summary.dart';
import 'package:ketchup/models/pomodoro_info.dart';
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

final pomodoroStateProvider =
    FutureProvider.autoDispose.family<PomodoroInfo, String>((ref, id) async {
  return await PomodoroRepository.getData(id);
});

class _Page extends ConsumerWidget {
  final String pomodoroId;

  const _Page({
    required this.pomodoroId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pomodoroState = ref.watch(pomodoroStateProvider(pomodoroId));

    final TextEditingController controller = TextEditingController();
    controller.text = pomodoroState.maybeWhen(
      data: (data) => data.title ?? "無題",
      orElse: () => "無題",
    );

    return CustomScrollView(
      slivers: [
        SliverAppBar.large(
          title: TextField(
            controller: controller,
            style: TextStyle(
              fontSize: Theme.of(context).textTheme.titleLarge?.fontSize,
            ),
            decoration: const InputDecoration.collapsed(
              hintText: "",
              border: InputBorder.none,
            ),
            onSubmitted: pomodoroState.maybeWhen(
              data: (data) => (value) {
                final info = data.copyWith(title: value);
                PomodoroRepository.runUpdate(info);

                ref.invalidate(pomodoroListState);
                ref.invalidate(pomodoroStateProvider);
              },
              orElse: () => null,
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.delete_outline),
              tooltip: "削除する",
              onPressed: pomodoroState.maybeWhen(
                data: (data) => () async {
                  if (context.canPop()) context.pop();

                  await PomodoroRepository.delete(data);
                  ref.invalidate(pomodoroListState);
                },
                orElse: () => null,
              ),
            ),
          ],
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            pomodoroState.maybeWhen(
              data: (data) => [
                PomodoroSummary(info: data),
                Memo(pomodoroId: data.id),
              ],
              orElse: () => [],
            ),
          ),
        ),
      ],
    );
  }
}
