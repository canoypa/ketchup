import 'package:freezed_annotation/freezed_annotation.dart';

part 'pomodoro_memo.freezed.dart';

@freezed
class PomodoroMemo with _$PomodoroMemo {
  const factory PomodoroMemo({
    required String pomodoroId,
    required String id,
    required String value,
    required DateTime createdAt,
  }) = _PomodoroMemo;
}
