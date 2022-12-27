import 'package:freezed_annotation/freezed_annotation.dart';

part 'pomodoro_interval.freezed.dart';

@freezed
class PomodoroInterval with _$PomodoroInterval {
  const factory PomodoroInterval({
    required String pomodoroId,
    required String id,
    required DateTime startAt,
    required DateTime endAt,
  }) = _PomodoroInterval;
}
