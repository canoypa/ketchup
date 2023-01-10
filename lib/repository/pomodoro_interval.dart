import 'package:ketchup/database/app_database.dart';
import 'package:ketchup/models/pomodoro_interval.dart';

class PomodoroIntervalRepository {
  static final _db = AppDatabase();

  static Future<List<PomodoroInterval>> getInterval() async {
    final db = await _db.database;
    final response = await db.query('POMODORO_INTERVAL');
    return response.map((e) => PomodoroInterval.fromObject(e)).toList();
  }

  static Future<void> insert(PomodoroInterval interval) async {
    final db = await _db.database;
    await db.insert('POMODORO_INTERVAL', interval.toObject());
  }

  static Future<Duration> getTime(String pomodoroId) async {
    final db = await _db.database;
    final response = await db.rawQuery(
      'SELECT SUM(endAt - startAt) AS result FROM POMODORO_INTERVAL WHERE pomodoro_id = ?',
      [pomodoroId],
    );
    return Duration(microseconds: response.first["result"] as int);
  }
}
