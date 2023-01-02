import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ketchup/components/Home/circular_progress.dart';
import 'package:ketchup/store/pomodoro/provider.dart';

class TimerArea extends StatelessWidget {
  final Duration progressTime;

  const TimerArea({
    super.key,
    this.progressTime = const Duration(seconds: 25),
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

    final DateTime startAt = pomodoroState.maybeMap(
      working: (value) => value.interval.startAt,
      breaking: (value) => value.interval.startAt,
      orElse: () => DateTime.now(),
    );
    final Duration intervalTime = pomodoroState.maybeMap(
      working: (value) =>
          value.interval.endAt.difference(value.interval.startAt),
      breaking: (value) =>
          value.interval.endAt.difference(value.interval.startAt),
      orElse: () => const Duration(minutes: 25),
    );

    int diff = _time.difference(startAt).inSeconds;
    int hour = (diff / (60 * 60)).floor();
    int mod = diff % (60 * 60);
    int minutes = (mod / 60).floor();
    int second = mod % 60;

    String dispTime = '';
    if (hour != 0) {
      dispTime += '$hour時間';
    }
    if (minutes != 0) {
      dispTime += '$minutes分';
    }
    if (hour == 0 && minutes == 0 && second != 0) {
      dispTime += '$second秒';
    }
    if (hour == 0 && minutes == 0 && second == 0) {
      dispTime += '${intervalTime.inMinutes}分';
    }

    return Text(
      dispTime,
      style: TextStyle(
        fontSize: 45,
        color: Theme.of(context).colorScheme.onSurface,
      ),
    );
  }
}
