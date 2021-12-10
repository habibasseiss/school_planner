import 'package:sqflite/sqflite.dart';

class DB {
  DB._();

  //Instância do DB
  static final DB instance = DB._();

  //Instância do SQLite
  static Database? _database;

  get database async {
    if (_database != null) return _database;
    //return await _initdatabase();
  }
}
