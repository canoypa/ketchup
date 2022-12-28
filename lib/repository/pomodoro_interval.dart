import 'package:ketchup/database/app_database.dart';

class PomodoroIntervalRepository {
  static  final _db = AppDatabase();

  static Future getInterval() async {
    final db = await _db.database;
    return await db.query('POMODORO_INTERVAL');
  }

  static Future insert(Map<String,dynamic> obj) async {
    final db = await _db.database;

    return (
      await db.insert(
        'POMODORO_INTERVAL',
        obj
      )
    );
  }

  static Future getTime(String pomodoroId) async {
    final db = await _db.database;

    return (
        await db.rawQuery('SELECT SUM(endAt-startAt) FROM POMODORO_INTERVAL WHERE pomodoroId = ?',[pomodoroId])
    );
  }
}
