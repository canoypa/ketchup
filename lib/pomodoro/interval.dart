import 'package:flutter/foundation.dart';

@immutable
class PomodoroInterval {
  final DateTime startAt;
  final DateTime endAt;

  const PomodoroInterval({
    required this.startAt,
    required this.endAt,
  });

  PomodoroInterval copyWith({
    DateTime? startAt,
    DateTime? endAt,
  }) {
    return PomodoroInterval(
      startAt: startAt ?? this.startAt,
      endAt: endAt ?? this.endAt,
    );
  }
}
