import 'package:ketchup/database/app_database.dart';

class PomodoroIntervalRepository {
  static  final _db = AppDatabase();

  static Future intervalInsert(Map<String,dynamic> obj) async {
    final db = await _db.database;

    return (
      await db.insert(
        'POMODORO_INTERVAL',
        obj
      )
    );
  }
}
