import 'package:ketchup/database/app_database.dart';

class PomodoroMemoRepository {
  static  final _db = AppDatabase();
  
  static Future intervalQuery(Map<String,dynamic> obj) async {
    final db = await _db.database;
    return await db.query('POMODORO_MEMO',where: 'id = ?',whereArgs: [obj['pomodoro_id']],orderBy: 'createdAt');
  }

  static Future memoInsert(Map<String,dynamic> obj) async {
    final db = await _db.database;
    return (
      await db.insert(
        'POMODORO_MEMO',
        obj
      )
    );
  }
}
