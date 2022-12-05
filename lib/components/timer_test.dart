import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ketchup/store/pomodoro/provider.dart';

class TimerTest extends ConsumerWidget {
  const TimerTest({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pomodoroNotifier = ref.watch(pomodoroTimerProvider.notifier);
    final pomodoroState = ref.watch(pomodoroTimerProvider);

    return Column(
      children: [
        Text("Status: ${pomodoroState.status.name}"),
        OutlinedButton(
          onPressed: () {
            pomodoroNotifier.start();
          },
          child: const Text("START"),
        ),
        OutlinedButton(
          onPressed: () {
            pomodoroNotifier.doneWork();
          },
          child: const Text("DONE"),
        ),
        OutlinedButton(
          onPressed: () {
            pomodoroNotifier.finish();
          },
          child: const Text("DONE ALL"),
        ),
      ],
    );
  }
}