import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ketchup/models/pomodoro_info.dart';
import 'package:ketchup/store/pomodoro/measure.dart';
import 'package:ketchup/store/pomodoro/state.dart';
import 'package:ketchup/store/settings/break_time.dart';
import 'package:ketchup/store/settings/work_time.dart';
import 'package:nanoid/nanoid.dart';

final pomodoroTimerProvider =
    StateNotifierProvider<PomodoroMeasureNotifier, PomodoroMeasure>((ref) {
  final measure = PomodoroMeasure.waiting(
    info: PomodoroInfo(id: nanoid(16), createdAt: DateTime.now()),
  );

  final defaultWorkTime = ref.watch(workTimeSettingProvider).maybeWhen(
        data: (data) => data,
        orElse: () => 0,
      );
  final defaultBreakTime = ref.watch(breakTimeSettingProvider).maybeWhen(
        data: (data) => data,
        orElse: () => 0,
      );

  return PomodoroMeasureNotifier(
    measure,
    defaultPomodoroTime: Duration(minutes: defaultWorkTime),
    defaultBreakingTime: Duration(minutes: defaultBreakTime),
  );
});
