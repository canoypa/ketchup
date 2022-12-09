import 'package:ketchup/app/pomodoro.dart';
// import 'package:ketchup/database/POMODORO.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

final String tablePomodoro = 'pomodoro';
final String id = '_id';
final String title = 'title';
final String category_id = 'category';


class POMODORO {
  late String pomodoro_id;
  late String pomodoro_title;
  late bool pomodoro_category;
  Map<String,Object?> toMap() {
    final map = <String, Object?>{
      title : pomodoro_title,
      category_id : pomodoro_category == true ? 1 : 0
    };
    if(pomodoro_id != null) {
      map[id] = pomodoro_id;
    }
    return map;
  }

  POMODORO();

  POMODORO.fromMap(Map<String, Object?> map) {
    final pomodoro_id = map[id];
    final pomodoro_title = map[title];
    final pomodoro_category = map[category_id];
  }
}


class AppDatabase {
  factory AppDatabase() {
    return _singleton;
  }

  static final AppDatabase _singleton = AppDatabase._internal();
  AppDatabase._internal();

  late final Future<Database> database = initializeDatabase();

  Future<Database> initializeDatabase() async {
    return await openDatabase(
      join(await getDatabasesPath(), "app_database"),
      version: 1,
      onCreate: _onCreate,
    );
  }

  void _onCreate(Database db, int version) async {
    /*
    await db.execute('''
    CREATE TABLE POMODORO (id TEXT PRIMARY KEY, title TEXT, category_id TEXT);
    CREATE TABLE POMODORO_INTERVAL (id TEXT PRIMARY KEY, pomodoro_id: TEXT, start_at: INTEGER, end_at: INTEGER);
    CREATE TABLE POMODORO_MEMO (id TEXT PRIMARY KEY, pomodoro_id: TEXT, value: TEXT, createdAt: INTEGER);
    CREATE TABLE CATEGORY (id TEXT PRIMARY KEY, title: TEXT, color: TEXT);
    ''');
    */
    await db.execute('''
    CREATE TABLE POMODORO (id TEXT PRIMARY KEY, title TEXT, category_id TEXT);
    ''');
  }

  Future runInsert(Database db,POMODORO pomodoro) async {
    return (
      db.insert(
        'POMODORO',
        pomodoro.toMap(),
      )
    );
  }

    Future runUpdate(Database db,POMODORO pomodoro) async {
    return (
      db.update(
        'POMODORO',
        pomodoro.toMap(),
        where: 'id = ?',whereArgs: [pomodoro.pomodoro_id]
      )
    );
  }
}
