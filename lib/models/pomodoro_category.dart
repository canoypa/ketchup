import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pomodoro_category.freezed.dart';

@freezed
class PomodoroCategory with _$PomodoroCategory {
  const PomodoroCategory._();

  const factory PomodoroCategory({
    required String id,
    required String title,
    required Color color,
  }) = _PomodoroCategory;

  factory PomodoroCategory.fromObject(Map<String, Object?> object) {
    return PomodoroCategory(
      id: object["id"] as String,
      title: object["title"] as String,
      color: Color(object["color"] as int),
    );
  }

  Map<String, Object?> toObject() {
    return {
      "id": id,
      "title": title,
      "color": color.value,
    };
  }
}
