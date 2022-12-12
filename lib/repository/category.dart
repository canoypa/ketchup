import 'package:ketchup/database/app_database.dart';

class CategoryRepository {
  static  final _db = AppDatabase();

  static Future categoryQuery(Map<String,dynamic> obj) async {
    final db = await _db.database;
    return await db.query('CATEGORY');
  }

  static Future categoryInsert(Map<String,dynamic> obj) async {
    final db = await _db.database;
    return (
      await db.insert(
        'CATEGORY',
        obj
      )
    );
  }
  //toMapした結果を受け取って、

  static Future categoryUpdate(Map<String,dynamic>obj) async {
    final db = await _db.database;

    return (
    await db.update(
        'CATEGORY',
        obj,
        where: 'id = ?',whereArgs: [obj["pomodoro_id"]]
      )
    );
  }
}
