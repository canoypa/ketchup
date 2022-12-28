import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ketchup/models/pomodoro_info.dart';
import 'package:ketchup/models/pomodoro_interval.dart';

part 'measure.freezed.dart';

@freezed
class PomodoroMeasure with _$PomodoroMeasure {
  const factory PomodoroMeasure.waiting({
    required PomodoroInfo info,
  }) = Waiting;

  const factory PomodoroMeasure.working({
    required PomodoroInfo info,
    required PomodoroInterval interval,
    required Timer timer,
  }) = Working;

  const factory PomodoroMeasure.breaking({
    required PomodoroInfo info,
    required PomodoroInterval interval,
    required Timer timer,
  }) = Breaking;
}
