import 'package:ketchup/database/app_database.dart';
import 'package:ketchup/models/pomodoro_info.dart';

class PomodoroRepository {
  static final _db = AppDatabase();

  static Future<PomodoroInfo> getData(String id) async {
    final db = await _db.database;
    final response = await db.query(
      "pomodoro",
      where: 'id = ?',
      whereArgs: [id],
    );
    return PomodoroInfo.fromObject(response.first);
  }

  static Future<List<PomodoroInfo>> getCategoryData({
    String? category,
    int? limit,
  }) async {
    final db = await _db.database;

    String where = "";
    List<Object?> whereArgs = [];

    if (category != null) {
      where += "category_id = ?";
      whereArgs.add(category);
    }

    final response = await db.query(
      "POMODORO",
      where: where != "" ? where : null,
      whereArgs: whereArgs,
      limit: limit,
    );
    return response.map((e) => PomodoroInfo.fromObject(e)).toList();
  }

  static Future<void> runInsert(PomodoroInfo info) async {
    final db = await _db.database;
    await db.insert('POMODORO', info.toObject());
  }

  static Future<void> runUpdate(PomodoroInfo info) async {
    final db = await _db.database;
    await db.update(
      'POMODORO',
      info.toObject(),
      where: 'id = ?',
      whereArgs: [info.id],
    );
  }

  static Future<void> delete(PomodoroInfo info) async {
    final db = await _db.database;

    await db.delete(
      "POMODORO",
      where: "id = ?",
      whereArgs: [info.id],
    );

    // TODO: 適切な場所に移動
    await db.delete(
      "POMODORO_MEMO",
      where: "pomodoro_id = ?",
      whereArgs: [info.id],
    );
    await db.delete(
      "POMODORO_INTERVAL",
      where: "pomodoro_id = ?",
      whereArgs: [info.id],
    );
  }
}
