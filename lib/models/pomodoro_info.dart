import 'package:freezed_annotation/freezed_annotation.dart';

part 'pomodoro_info.freezed.dart';

@freezed
class PomodoroInfo with _$PomodoroInfo {
  const PomodoroInfo._();

  const factory PomodoroInfo({
    required String id,
    required String title,
    required String categoryId,
  }) = _PomodoroInfo;

  factory PomodoroInfo.fromObject(Map<String, Object?> object) {
    return PomodoroInfo(
      id: object["id"] as String,
      title: object["title"] as String,
      categoryId: object["category_id"] as String,
    );
  }

  Map<String, Object?> toObject() {
    return {
      "id": id,
      "title": title,
      "category_id": categoryId,
    };
  }
}
