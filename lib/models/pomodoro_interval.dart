import 'package:freezed_annotation/freezed_annotation.dart';

part 'pomodoro_interval.freezed.dart';

@freezed
class PomodoroInterval with _$PomodoroInterval {
  const PomodoroInterval._();

  const factory PomodoroInterval({
    required String pomodoroId,
    required String id,
    required DateTime startAt,
    required DateTime endAt,
  }) = _PomodoroInterval;

  factory PomodoroInterval.fromObject(Map<String, Object?> object) {
    return PomodoroInterval(
      id: object["id"] as String,
      pomodoroId: object["pomodoro_id"] as String,
      startAt: DateTime.fromMillisecondsSinceEpoch(object["start_at"] as int),
      endAt: DateTime.fromMillisecondsSinceEpoch(object["end_at"] as int),
    );
  }

  Map<String, Object?> toObject() {
    return {
      "id": id,
      "pomodoro_id": pomodoroId,
      "start_at": startAt.millisecondsSinceEpoch,
      "end_at": endAt.millisecondsSinceEpoch,
    };
  }
}
