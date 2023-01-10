import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ketchup/models/pomodoro_category.dart';
import 'package:ketchup/repository/category.dart';

final categoriesProvider =
    FutureProvider.autoDispose<List<PomodoroCategory>>((ref) async {
  return await CategoryRepository.getAllCategory();
});
