import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ketchup/models/pomodoro_info.dart';
import 'package:ketchup/store/pomodoro/measure.dart';
import 'package:ketchup/store/pomodoro/state.dart';
import 'package:nanoid/nanoid.dart';

final pomodoroTimerProvider =
    StateNotifierProvider<PomodoroMeasureNotifier, PomodoroMeasure>((ref) {
  final measure = PomodoroMeasure(
    info: PomodoroInfo(id: nanoid(16), createdAt: DateTime.now()),
  );

  return PomodoroMeasureNotifier(measure);
});
