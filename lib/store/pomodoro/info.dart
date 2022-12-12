import 'package:flutter/foundation.dart';

@immutable
class PomodoroInfo {
  final String? id;
  final String? title;
  final String? categoryId;

  const PomodoroInfo({
    this.id,
    this.title,
    this.categoryId,
  });

  PomodoroInfo copyWith({
    String? id,
    String? title,
    String? categoryId,
  }) {
    return PomodoroInfo(
      id: id ?? this.id,
      title: title ?? this.title,
      categoryId: categoryId ?? this.categoryId,
    );
  }
}
