import 'package:flutter/material.dart';

final String tablePomodoro = 'pomodoro';
final String id = '_id';
final String title = 'title';
final String category_id = 'category';

class POMODORO {
  late String pomodoro_id;
  late String pomodoro_title;
  late String pomodoro_category;
  Map<String,Object?> toMap() {
    final map = <String, Object?>{
      title : pomodoro_title,
      category_id : pomodoro_category == true ? 1 : 0
    };
    if(pomodoro_id != null) {
      map[id] = pomodoro_id;
    }
    return map;
  }

  POMODORO();

  POMODORO.fromMap(Map<String, Object?> map) {
    final pomodoro_id = map[id];
    final pomodoro_title = map[title];
    final pomodoro_category = map[category_id] == 1;
  }
}