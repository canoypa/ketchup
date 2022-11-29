import 'package:flutter/foundation.dart';

@immutable
class PomodoroInfo {
  final String? title;
  final String? categoryId;

  const PomodoroInfo({this.title, this.categoryId});

  PomodoroInfo copyWith({
    String? title,
    String? categoryId,
  }) {
    return PomodoroInfo(
      title: title ?? this.title,
      categoryId: categoryId ?? this.categoryId,
    );
  }
}
