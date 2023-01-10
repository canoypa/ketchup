import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ketchup/models/pomodoro_memo.dart';
import 'package:ketchup/repository/pomodoro_memo.dart';

final pomodoroMemosProvider = FutureProvider.family
    .autoDispose<List<PomodoroMemo>, String>((ref, id) async {
  return await PomodoroMemoRepository.getMemo(id);
});
