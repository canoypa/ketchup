import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ketchup/store/pomodoro/info.dart';
import 'package:ketchup/store/pomodoro/interval.dart';

enum PomodoroStatus {
  waiting(),
  working(),
  breaking(),
}

@immutable
class PomodoroMeasure {
  final PomodoroInfo info;
  final PomodoroInterval? interval;

  final PomodoroStatus status;
  final int? time;
  final Timer? timer;

  const PomodoroMeasure({
    this.status = PomodoroStatus.waiting,
    this.info = const PomodoroInfo(),
    this.interval,
    this.time,
    this.timer,
  });

  PomodoroMeasure copyWith({
    PomodoroStatus? status,
    PomodoroInfo? info,
    int? time,
    PomodoroInterval? interval,
    Timer? timer,
  }) {
    return PomodoroMeasure(
      status: status ?? this.status,
      info: info ?? this.info,
      time: time ?? this.time,
      interval: interval ?? this.interval,
      timer: timer,
    );
  }
}

class PomodoroMeasureNotifier extends StateNotifier<PomodoroMeasure> {
  // TODO: 引数とかで受け取る?
  final Duration _defaultPomodoroTime = const Duration(seconds: 25);
  final Duration _defaultBreakingTime = const Duration(seconds: 5);

  PomodoroMeasureNotifier() : super(const PomodoroMeasure()) {
    saveInfo();
  }

  void setInfo({
    String? title,
    String? categoryId,
    int? time,
  }) {
    final info = PomodoroInfo(
      title: title,
      categoryId: categoryId,
    );

    state = state.copyWith(
      info: info,
      time: time,
    );

    saveInfo();
  }

  /// 計測開始
  void start() {
    if (kDebugMode) print("start");

    // interval を登録して計測開始
    final startAt = DateTime.now();
    final endAt = startAt.add(_defaultPomodoroTime);
    final interval = PomodoroInterval(startAt: startAt, endAt: endAt);

    state = state.copyWith(
      status: PomodoroStatus.working,
      interval: interval,
      timer: Timer(_defaultPomodoroTime, doneWork),
    );
  }

  /// 1ポモドーロを終了
  void doneWork() async {
    if (kDebugMode) print("done interval");

    // 早く終わった場合、その時間で更新する
    final now = DateTime.now();
    if (state.interval != null &&
        state.interval!.endAt.difference(now).inMicroseconds > 0) {
      state.timer?.cancel();

      final updatedInterval = state.interval!.copyWith(
        endAt: now,
      );
      state = state.copyWith(
        interval: updatedInterval,
      );
    }

    saveInterval();

    final startAt = DateTime.now();
    final endAt = startAt.add(_defaultBreakingTime);
    final interval = PomodoroInterval(startAt: startAt, endAt: endAt);

    // 休憩時間に入る
    state = state.copyWith(
      status: PomodoroStatus.breaking,
      interval: interval,
      timer: Timer(_defaultBreakingTime, doneBreak),
    );
  }

  // 休憩時間の終了処理
  void doneBreak() {
    if (kDebugMode) print("done break");

    state.timer?.cancel();

    start();
  }

  /// ポモドーロ全体を終了し、リセット
  void finish() {
    if (kDebugMode) print("done");

    state.timer?.cancel();

    // 全てリセット
    state = const PomodoroMeasure();
  }

  /// タイトルなどを保存
  Future<void> saveInfo() async {
    if (kDebugMode) print("save info");

    // db アクセス
  }

  /// 1ポモドーロを保存
  Future<void> saveInterval() async {
    if (kDebugMode) print("save interval");

    // db アクセス
  }
}
