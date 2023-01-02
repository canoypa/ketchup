import 'package:freezed_annotation/freezed_annotation.dart';

part 'pomodoro_info.freezed.dart';

@freezed
class PomodoroInfo with _$PomodoroInfo {
  const PomodoroInfo._();

  const factory PomodoroInfo({
    required String id,
    required DateTime createdAt,
    String? title,
    String? categoryId,
  }) = _PomodoroInfo;

  factory PomodoroInfo.fromObject(Map<String, Object?> object) {
    return PomodoroInfo(
      id: object["id"] as String,
      title: object["title"] as String,
      createdAt:
          DateTime.fromMillisecondsSinceEpoch(object["created_at"] as int),
      categoryId: object["category_id"] as String,
    );
  }

  Map<String, Object?> toObject() {
    final obj = {
      "id": id,
      "created_at": createdAt.millisecondsSinceEpoch,
    };

    if (title != null) obj["title"] = title!;
    if (categoryId != null) obj["category_id"] = categoryId!;

    return obj;
  }
}
