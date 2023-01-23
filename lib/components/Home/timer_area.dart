import 'dart:async';

import 'package:duration/duration.dart';
import 'package:duration/locale.dart';
import 'package:flutter/material.dart';
import "package:flutter_gen/gen_l10n/l10n.dart";
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ketchup/components/Home/circular_progress.dart';
import 'package:ketchup/store/pomodoro/provider.dart';

class TimerArea extends StatelessWidget {
  const TimerArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: const [
        CircularProgress(),
        ProgressLabel(),
      ],
    );
  }
}

class ProgressLabel extends ConsumerStatefulWidget {
  const ProgressLabel({Key? key}) : super(key: key);

  @override
  ProgressLabelState createState() => ProgressLabelState();
}

class ProgressLabelState extends ConsumerState<ProgressLabel> {
  late DateTime _time;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _time = DateTime.now();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _time = DateTime.now();
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final pomodoroState = ref.watch(pomodoroTimerProvider);

    final DateTime endAt = pomodoroState.maybeMap(
      working: (value) => value.interval.endAt,
      breaking: (value) => value.interval.endAt,
      orElse: () => DateTime.now()
          .add(ref.watch(pomodoroTimerProvider.notifier).defaultPomodoroTime),
    );

    final diff = prettyDuration(
      endAt.difference(_time),
      locale: DurationLocale.fromLanguageCode(L10n.of(context).localeName) ??
          const EnglishDurationLocale(),
      first: true,
    );

    return Text(
      diff,
      style: TextStyle(
        fontSize: 45,
        color: Theme.of(context).colorScheme.onSurface,
      ),
    );
  }
}
