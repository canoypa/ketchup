import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ketchup/store/pomodoro/provider.dart';

enum ButtonType {
  start,
  end,
  rest,
  restart;
}

class TimerButton extends ConsumerWidget {
  final ButtonType buttonType;

  const TimerButton({
    super.key,
    required this.buttonType,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    switch (buttonType) {
      case ButtonType.start:
        return _ToggleButton(
            icon: Icons.play_arrow_outlined,
            label: 'はじめる',
            onPressed: (() {
              ref.read(pomodoroTimerProvider.notifier).start();
            }));

      case ButtonType.end:
        return _ToggleButton(
            icon: Icons.done_all,
            label: '終了する',
            onPressed: (() {
              ref.read(pomodoroTimerProvider.notifier).finish();
            }));

      case ButtonType.rest:
        return _ToggleButton(
            icon: Icons.done,
            label: 'さっさと休憩',
            onPressed: (() {
              ref.read(pomodoroTimerProvider.notifier).doneWork();
            }));

      case ButtonType.restart:
        return _ToggleButton(
            icon: Icons.play_arrow_outlined,
            label: 'さっさと再開する',
            onPressed: (() {
              ref.read(pomodoroTimerProvider.notifier).start();
            }));
    }
  }
}

class _ToggleButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onPressed;

  const _ToggleButton({
    required this.icon,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        foregroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
        padding: const EdgeInsets.symmetric(vertical: 10.0),
      ),
      icon: Icon(icon),
      label: Text(label),
      onPressed: onPressed,
    );
  }
}
