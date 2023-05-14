import 'dart:convert';
import 'package:medical_app/src/features/home/data/models/record_model.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static const _databaseName = 'my_database.db';
  static const _databaseVersion = 1;

  DatabaseHelper._privateConstructor();

  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final path = await getDatabasesPath();
    final databasePath = join(path, _databaseName);
    return await openDatabase(
      databasePath,
      version: _databaseVersion,
      onCreate: _onCreate,
    );
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE record (
        id INTEGER PRIMARY KEY,
        dateTime TEXT,
        painStatusNumber INTEGER,
        painLocation TEXT,
        symptoms TEXT,
        aggravatingFactors TEXT,
        medications TEXT,
        environment TEXT,
        notes TEXT
      )
    ''');
  }

  Future<int> insertRecord(RecordModel recordModel) async {
    final db = await database;
    return await db.insert(
        'record',
        {
          'id': recordModel.id,
          'dateTime': recordModel.dateTime,
          'painStatusNumber': recordModel.painStatusNumber,
          'painLocation': jsonEncode(recordModel.painLocationList),
          'symptoms': jsonEncode(recordModel.symptomsList),
          'aggravatingFactors': jsonEncode(recordModel.aggravatingFactorsList),
          'medications': jsonEncode(recordModel.medicationsList),
          'environment': jsonEncode(recordModel.environmentList),
          'notes': recordModel.notes,
        },
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<List<RecordModel>> getAllRecords() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('record');
    return List.generate(maps.length, (i) {
      return RecordModel.fromJson(maps[i]);
    });
  }

  Future<dynamic> getAllRec() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('record');
    return maps;
  }

  Future<int> updateRecord(RecordModel recordModel) async {
    final db = await database;
    return await db.update(
      'record',
      recordModel.toJson(),
      where: 'id = ?',
      whereArgs: [recordModel.id],
    );
  }

  Future<int> deleteRecord(int id) async {
    final db = await database;
    return await db.delete(
      'record',
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}
