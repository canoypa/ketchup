import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

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
    await db.execute('''
    CREATE TABLE POMODORO (id TEXT PRIMARY KEY, title TEXT, category_id TEXT, created_at INTEGER);
    ''');
    await db.execute('''
    CREATE TABLE POMODORO_INTERVAL (id TEXT PRIMARY KEY, pomodoro_id TEXT, start_at INTEGER, end_at INTEGER);
    ''');
    await db.execute('''
    CREATE TABLE POMODORO_MEMO (id TEXT PRIMARY KEY, pomodoro_id TEXT, value TEXT, created_at INTEGER);
    ''');
    await db.execute('''
    CREATE TABLE CATEGORY (id TEXT PRIMARY KEY, title TEXT, color INTEGER);
    ''');
  }
}
