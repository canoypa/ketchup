import 'package:flutter/foundation.dart';

@immutable
class PomodoroInterval {
  final String id;
  final DateTime startAt;
  final DateTime endAt;

  const PomodoroInterval({
    required this.id,
    required this.startAt,
    required this.endAt,
  });

  PomodoroInterval copyWith({
    String? id,
    DateTime? startAt,
    DateTime? endAt,
  }) {
    return PomodoroInterval(
      id: id ?? this.id,
      startAt: startAt ?? this.startAt,
      endAt: endAt ?? this.endAt,
    );
  }
}
