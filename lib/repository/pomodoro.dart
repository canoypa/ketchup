import 'package:ketchup/database/app_database.dart';

class PomodoroRepository {
static  final _db = AppDatabase();

  static Future runQuery(Map<String,dynamic> obj) async {
    final db = await _db.database;
    return await db.query('POMODORO');
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

  //toMapした結果を受け取って、
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
