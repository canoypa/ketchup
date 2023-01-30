import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ketchup/models/pomodoro_info.dart';
import 'package:ketchup/models/pomodoro_interval.dart';
import 'package:ketchup/repository/pomodoro.dart';
import 'package:ketchup/repository/pomodoro_interval.dart';
import 'package:ketchup/store/pomodoro/measure.dart';
import 'package:nanoid/nanoid.dart';

class PomodoroMeasureNotifier extends StateNotifier<PomodoroMeasure> {
  final Duration defaultPomodoroTime;
  final Duration defaultBreakingTime;

  // TODO: フラグ使いたくない
  bool _isInfoSaved = false;

  PomodoroMeasureNotifier(
    PomodoroMeasure state, {
    required this.defaultPomodoroTime,
    required this.defaultBreakingTime,
  }) : super(state);

  void setInfo({
    String? title,
    String? categoryId,
    int? time,
  }) {
    state = state.maybeMap(
      waiting: (value) => value.copyWith.info(
        title: title ?? value.info.title,
        categoryId: categoryId ?? value.info.categoryId,
      ),
      orElse: () => throw Error(),
    );
  }

  /// 計測開始
  void start() {
    if (kDebugMode) print("start");

    // interval を登録して計測開始
    final startAt = DateTime.now();
    final endAt = startAt.add(defaultPomodoroTime);
    final interval = PomodoroInterval(
      pomodoroId: state.info.id,
      id: nanoid(16),
      startAt: startAt,
      endAt: endAt,
    );

    state = state.maybeMap(
      waiting: (value) => PomodoroMeasure.working(
        info: value.info,
        interval: interval,
        timer: Timer(defaultPomodoroTime, doneWork),
      ),
      breaking: (value) => PomodoroMeasure.working(
        info: value.info,
        interval: interval,
        timer: Timer(defaultPomodoroTime, doneWork),
      ),
      orElse: () => throw Error(),
    );
  }

  /// 1ポモドーロを終了
  void doneWork() async {
    if (kDebugMode) print("done interval");

    if (!_isInfoSaved) {
      await saveInfo(state.info);
      _isInfoSaved = true;
    }

    state = state.maybeMap(
      working: (state) {
        final now = DateTime.now();
        if (state.interval.endAt.difference(now).inMicroseconds > 0) {
          state.timer.cancel();

          // 早く終わった場合、その時間で更新する
          saveInterval(state.interval.copyWith(endAt: now));
        } else {
          saveInterval(state.interval);
        }

        final startAt = DateTime.now();
        final endAt = startAt.add(defaultBreakingTime);
        final interval = PomodoroInterval(
          pomodoroId: state.info.id,
          id: nanoid(16),
          startAt: startAt,
          endAt: endAt,
        );

        // 休憩時間に入る
        return PomodoroMeasure.breaking(
          info: state.info,
          interval: interval,
          timer: Timer(defaultBreakingTime, doneBreak),
        );
      },
      orElse: () => throw Error(),
    );
  }

  // 休憩時間の終了処理
  void doneBreak() {
    if (kDebugMode) print("done break");

    state.mapOrNull(
      working: (state) => state.timer.cancel(),
      breaking: (state) => state.timer.cancel(),
    );

    start();
  }

  /// ポモドーロ全体を終了し、リセット
  void finish() {
    if (kDebugMode) print("done");

    state.mapOrNull(
      working: (state) => state.timer.cancel(),
      breaking: (state) => state.timer.cancel(),
    );

    // 全てリセット
    _isInfoSaved = false;
    final info = PomodoroInfo(id: nanoid(16), createdAt: DateTime.now());
    state = PomodoroMeasure.waiting(info: info);
  }

  /// タイトルなどを保存
  Future<void> saveInfo(PomodoroInfo info) async {
    if (kDebugMode) print("save info");

    PomodoroRepository.runInsert(info);
  }

  /// 1ポモドーロを保存
  Future<void> saveInterval(PomodoroInterval interval) async {
    if (kDebugMode) print("save interval");

    PomodoroIntervalRepository.insert(interval);
  }
}
