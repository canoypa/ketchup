import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pomodoro_category.freezed.dart';

@freezed
class PomodoroCategory with _$PomodoroCategory {
  const factory PomodoroCategory({
    required String id,
    required String title,
    required Color color,
  }) = _PomodoroCategory;
}
