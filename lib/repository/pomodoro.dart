import 'package:ketchup/database/app_database.dart';

class PomodoroRepository {
static  final _db = AppDatabase();

  static Future getData() async {
    final db = await _db.database;
    return (
        await db.query(
        "pomodoro",
        where: 'id = ?',
        whereArgs: ["id"],
      )
    );
  }

static Future getCategoryData(String? Category) async {
  final db = await _db.database;
  return (
      await db.query(
        "pomodoro",
        where: 'category_id = ?',
        whereArgs: [Category??"*"],
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
