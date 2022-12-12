import 'package:ketchup/database/app_database.dart';

class CategoryRepository {
  static  final _db = AppDatabase();

  static Future categoryInsert(Map<String,dynamic> obj) async {
    final db = await _db.database;

    return (
      await db.insert(
        'POMODORO',
        obj
      )
    );
  }
  //toMapした結果を受け取って、

  static Future categoryUpdate(Map<String,dynamic>obj) async {
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
