import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ketchup/pomodoro/state.dart';

final pomodoroTimerProvider =
    StateNotifierProvider<PomodoroMeasureNotifier, PomodoroMeasure>((ref) {
  return PomodoroMeasureNotifier();
});
