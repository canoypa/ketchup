import 'package:freezed_annotation/freezed_annotation.dart';

part 'pomodoro_info.freezed.dart';

@freezed
class PomodoroInfo with _$PomodoroInfo {
  const factory PomodoroInfo({
    required String id,
    required String title,
    required String categoryId,
  }) = _PomodoroInfo;
}
