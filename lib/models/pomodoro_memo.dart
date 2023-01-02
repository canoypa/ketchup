import 'package:freezed_annotation/freezed_annotation.dart';

part 'pomodoro_memo.freezed.dart';

@freezed
class PomodoroMemo with _$PomodoroMemo {
  const PomodoroMemo._();

  const factory PomodoroMemo({
    required String pomodoroId,
    required String id,
    required String value,
    required DateTime createdAt,
  }) = _PomodoroMemo;

  factory PomodoroMemo.fromObject(Map<String, Object?> object) {
    return PomodoroMemo(
      pomodoroId: object["pomodoro_id"] as String,
      id: object["id"] as String,
      value: object["value"] as String,
      createdAt:
          DateTime.fromMillisecondsSinceEpoch(object["created_at"] as int),
    );
  }

  Map<String, Object?> toObject() {
    return {
      "pomodoro_id": pomodoroId,
      "id": id,
      "value": value,
      "created_at": createdAt.millisecondsSinceEpoch
    };
  }
}
