import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ketchup/store/pomodoro/provider.dart';

class CircularProgress extends ConsumerStatefulWidget {
  const CircularProgress({Key? key}) : super(key: key);

  @override
  CircularProgressState createState() => CircularProgressState();
}

class CircularProgressState extends ConsumerState<CircularProgress>
    with SingleTickerProviderStateMixin {
  late final Ticker _ticker;
  late DateTime _time;

  @override
  void initState() {
    super.initState();
    _time = DateTime.now();
    _ticker = createTicker((elapsed) {
      setState(() {
        _time = DateTime.now();
      });
    });
    _ticker.start();
  }

  @override
  void dispose() {
    _ticker.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final pomodoroState = ref.watch(pomodoroTimerProvider);

    final double progress = pomodoroState.map(
      waiting: (value) {
        return 0;
      },
      working: (value) {
        final elapsed = _time.difference(value.interval.startAt).inMilliseconds;
        final total = value.interval.endAt
            .difference(value.interval.startAt)
            .inMilliseconds;
        return elapsed / total;
      },
      breaking: (value) {
        final elapsed = _time.difference(value.interval.startAt).inMilliseconds;
        final total = value.interval.endAt
            .difference(value.interval.startAt)
            .inMilliseconds;
        return elapsed / total;
      },
    );

    return SizedBox(
      width: 256,
      height: 256,
      child: CircularProgressIndicator.adaptive(
        strokeWidth: 8,
        backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
        value: progress,
      ),
    );
  }
}
