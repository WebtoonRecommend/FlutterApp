//출처: Learn Flutter with Me - Youtube: https://youtu.be/noi6aYsP7Go
import 'dart:async';
import 'dart:io';
import 'package:application4/data/models/expiration.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class DatabaseHelper {
  DatabaseHelper._privateConstructor();

  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  static Database? _database;

  /// _database 변수를 가져올 때 null값이면 db를 초기화한 다음에 가져온다.
  Future<Database> get database async => _database ??= await _initDatabase();

  /// db 초기화 함수
  Future<Database> _initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, 'expiration.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  /// db 생성 함수
  Future _onCreate(Database db, int version) async {
    // id, name, refresh_time 컬럼이 존재
    await db.execute('''
    CREATE TABLE expiration(
      id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
      name TEXT UNIQUE,
      refresh_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
    )
    ''');
  }

  /// row를 추가하는 insert 함수
  Future<int> add(Expiration expiration) async {
    Database db = await instance.database;
    return await db.insert('expiration', expiration.toMap());
  }

  /// 모든 row를 가져오는 get 함수
  Future<List<Expiration>> getExpiration() async {
    Database db = await instance.database;
    var expiration = await db.query('expiration', orderBy: 'id');
    List<Expiration> expirationList = expiration.isNotEmpty
        ? expiration.map((c) => Expiration.fromMap(c)).toList()
        : [];
    return expirationList;
  }

  /// row를 변경하는 update 함수
  Future<int> update(Expiration expiration) async {
    Database db = await instance.database;
    return await db.update('expiration', expiration.toMap(),
        where: 'name = ?', whereArgs: [expiration.name]);
  }

  /// row를 삭제하는 delete 함수
  Future<int> remove() async {
    Database db = await instance.database;
    return await db.delete('expiration');
  }

  /// 시각을 변경하는 update 함수
  Future updateTime(String userid) async {
    Database db = await instance.database;
    await db.execute('''
    UPDATE expiration SET refresh_time = STRFTIME('%Y-%m-%d %H:%M:%S', 'NOW') where name = ?
    ''',[userid]);
  }

  /// 테이블을 삭제하고 다시 생성하는 함수
  Future deleteTable() async {
    Database db = await instance.database;
    await db.execute('''
    DROP TABLE IF EXISTS expiration
    ''');
    _onCreate(db, 1);
  }
}