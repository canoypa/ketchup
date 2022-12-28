import 'package:ketchup/database/app_database.dart';

class PomodoroRepository {
static  final _db = AppDatabase();

  static Future getData(String pomodoroId) async {
    final db = await _db.database;
    return (
      await db.query(
        "pomodoro",
        where: 'id = ?',
        whereArgs: [pomodoroId],
      )
    );
  }
  
  static Future getLimitData(String ) async {
    final db = await _db.database;
    return (
      await db.query(
        "pomodoro",
        orderBy: 'createdAt',
        limit: 2
      )
    );
  }

  static Future getCategoryData({String? category ,int? limit}) async {
    final db = await _db.database;
    return (
        await db.query(
          "pomodoro",
          where: 'category_id = ?',
          whereArgs: category !=null ? [category] : null,
          limit: limit
        )
    );
  }

  static Future runInsert(Map<String,dynamic> obj) async {
    final db = await _db.database;

    return (
      await db.insert(
        'POMODORO',
        obj
      )
    );
  }



  static Future runUpdate(Map<String,dynamic>obj) async {
    final db = await _db.database;
    return (
    await db.update(
        'POMODORO',
        obj,
        where: 'id = ?',whereArgs: [obj["pomodoro_id"]]
      )
    );
  }

}
