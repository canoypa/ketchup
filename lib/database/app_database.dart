import 'package:sqflite/sqflite.dart';

class AppDatabase {
  factory AppDatabase() {
    return _singleton;
  }

  static final AppDatabase _singleton = AppDatabase._internal();
  AppDatabase._internal();

  late final Future<Database> database = initializeDatabase();

  Future<Database> initializeDatabase() async {
    final path = await getDatabasesPath();
    return await openDatabase(
      "$path/app_database",
      version: 1,
      onCreate: _onCreate,
    );
  }

  void _onCreate(Database db, int version) async {
    await db.execute('''
    CREATE TABLE POMODORO (id TEXT PRIMARY KEY, title TEXT, category_id TEXT);
    CREATE TABLE POMODORO_INTERVALS (id TEXT PRIMARY KEY, pomodoro_id: TEXT, start_at: INTEGER, end_at: INTEGER);
    CREATE TABLE POMODORO_MEMOS (id TEXT PRIMARY KEY, pomodoro_id: TEXT, value: TEXT, createdAt: INTEGER);
    CREATE TABLE CATEGORY (id TEXT PRIMARY KEY, title: TEXT, color: TEXT);
    ''');
  }
}
