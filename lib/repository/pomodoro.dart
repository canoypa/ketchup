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

  static Future getHistory(Map<String,dynamic>obj) async {
    final db = await _db.database;
    return (
      await db.rawQuery(
        '''
        SELECT id,title,color,SUM(end_at-start_at)
        FROM POMODORO 
        LEFT JOIN POMODORO_INTERVAL ON id = pomodoro_id, 
        LEFT JOIN CATEGORY ON category_id = id 
        '''
      )
    );
  }
}
