import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ketchup/components/Home/timer_button.dart';
import 'package:ketchup/store/pomodoro/provider.dart';

class HomeFooter extends ConsumerWidget {
  const HomeFooter({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pomodoroState = ref.watch(pomodoroTimerProvider);

    return pomodoroState.map(
      waiting: (value) => const _TimerButtons(
        buttonTypes: [ButtonType.start],
      ),
      working: (value) => const _TimerButtons(
        message: '頑張ってください～～',
        buttonTypes: [ButtonType.end, ButtonType.rest],
      ),
      breaking: (value) => const _TimerButtons(
        message: 'しっかり休んでください～～～',
        buttonTypes: [ButtonType.end, ButtonType.restart],
      ),
    );
  }
}

class _TimerButtons extends StatelessWidget {
  final String message;
  final List<ButtonType> buttonTypes;

  const _TimerButtons({
    this.message = '',
    required this.buttonTypes,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(message),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            children: buttonTypes
                .map(
                  (v) => Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: TimerButton(buttonType: v),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}
