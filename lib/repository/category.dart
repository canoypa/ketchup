import 'package:ketchup/database/app_database.dart';
import 'package:ketchup/models/pomodoro_category.dart';

class CategoryRepository {
  static final _db = AppDatabase();

  static Future<List<PomodoroCategory>> getAllCategory() async {
    final db = await _db.database;
    final response = await db.query('CATEGORY');
    return response.map((e) => PomodoroCategory.fromObject(e)).toList();
  }

  static Future<PomodoroCategory> getCategory(String id) async {
    final db = await _db.database;
    final response =
        (await db.query('CATEGORY', where: 'id = ?', whereArgs: [id]));
    return PomodoroCategory.fromObject(response.first);
  }

  static Future<void> categoryInsert(PomodoroCategory category) async {
    final db = await _db.database;
    await db.insert('CATEGORY', category.toObject());
  }

  static Future<void> categoryUpdate(PomodoroCategory category) async {
    final db = await _db.database;

    await db.update(
      'CATEGORY',
      category.toObject(),
      where: 'id = ?',
      whereArgs: [category.id],
    );
  }
}
