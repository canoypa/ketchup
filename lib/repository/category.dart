import 'package:ketchup/database/app_database.dart';

class CategoryRepository {
  static  final _db = AppDatabase();

  static Future getALlCategory() async {
    final db = await _db.database;
    return await db.query('CATEGORY');
  }

  static Future getCategory(String id) async {
    final db = await _db.database;
    return (
      await db.query(
        'CATEGORY',
        where: 'id = ?',whereArgs: [id]
      )
    );
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

  static Future categoryUpdate(Map<String,dynamic>obj) async {
    final db = await _db.database;

    return (
    await db.update(
        'CATEGORY',
        obj,
        where: 'id = ?',whereArgs: [obj["id"]],
      )
    );
  }

  
}
