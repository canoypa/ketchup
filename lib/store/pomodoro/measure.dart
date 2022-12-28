import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ketchup/models/pomodoro_info.dart';
import 'package:ketchup/models/pomodoro_interval.dart';

part 'measure.freezed.dart';

enum PomodoroStatus {
  waiting(),
  working(),
  breaking(),
}

@freezed
class PomodoroMeasure with _$PomodoroMeasure {
  const factory PomodoroMeasure({
    @Default(PomodoroStatus.waiting) PomodoroStatus status,
    required PomodoroInfo info,
    PomodoroInterval? interval,
    int? time,
    Timer? timer,
  }) = _PomodoroMeasure;
}
