import 'package:ketchup/database/app_database.dart';
import 'package:ketchup/models/pomodoro_memo.dart';

class PomodoroMemoRepository {
  static final _db = AppDatabase();

  static Future<List<PomodoroMemo>> getMemo(String pomodoroId) async {
    final db = await _db.database;
    final response = await db.query(
      'POMODORO_MEMO',
      where: 'id = ?',
      whereArgs: [pomodoroId],
      orderBy: 'createdAt',
    );
    return response.map((e) => PomodoroMemo.fromObject(e)).toList();
  }

  static Future<void> insertMemo(PomodoroMemo memo) async {
    final db = await _db.database;
    await db.insert('POMODORO_MEMO', memo.toObject());
  }
}
