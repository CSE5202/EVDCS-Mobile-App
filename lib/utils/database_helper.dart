import 'dart:io';



import 'package:path/path.dart';

import 'package:sqflite/sqflite.dart';

import 'package:path_provider/path_provider.dart';



class DatabaseHelper {



static final _databaseName = "Driver.db";

static final _databaseVersion = 1;



static final table = 'user';
static final table1 = 'deploy';
static final table2 = 'assign';
static final table3 = 'penality';
static final table4 = 'attendance';
static final table5 = 'comment';

static final col1 = '_id';
static final col2 = 'userid';
static final col3 = 'name';
static final col4 = 'phone';
static final col5 = 'subcity';
static final col6 = 'taxicode';
static final col7 = 'plateno';
static final col8 = 'status';

static final col15 ='id';
static final col9 ='driver_id';
static final col10 ='year';
static final col11 ='lap';
static final col12 ='source';
static final col13 ='destination';
static final col14 ='routetype';

static final col22 ='id';
static final col16 ='driver_id';
static final col17 ='date';
static final col18 ='time';
static final col19 ='source';
static final col20 ='destination';
static final col21 ='action';

static final col29 ='id';
static final col23 ='driver_id';
static final col24 ='punished_date';
static final col25 ='reason';
static final col26 ='punished_by';
static final col27 ='paid_date';
static final col28 ='status';

static final col34 ='id';
static final col30 ='driver_id';
static final col31 ='date';
static final col32 ='time';
static final col33 ='present';

static final col37 ='id';
static final col35 ='date';
static final col36 ='comment';

// make this a singleton class

DatabaseHelper._privateConstructor();

static final DatabaseHelper instance = DatabaseHelper._privateConstructor();



// only have a single app-wide reference to the database

static Database _database;

Future<Database> get database async {

if (_database != null) return _database;

// lazily instantiate the db the first time it is accessed

_database = await _initDatabase();

return _database;

}



// this opens the database (and creates it if it doesn't exist)

_initDatabase() async {

Directory documentsDirectory = await getApplicationDocumentsDirectory();

String path = join(documentsDirectory.path, _databaseName);

return await openDatabase(path,

version: _databaseVersion,

onCreate: _onCreate);

}



// SQL code to create the database table

Future _onCreate(Database db, int version) async {
await db.execute('''

CREATE TABLE $table1 (

$col15 INTEGER PRIMARY KEY,
$col9 TEXT,
$col10 TEXT NOT NULL,
$col11 TEXT NOT NULL,
$col12 TEXT NOT NULL,
$col13 TEXT NOT NULL,
$col14 TEXT NOT NULL

)

''');
await db.execute('''

CREATE TABLE $table2 (

$col22 INTEGER PRIMARY KEY,
$col16 TEXT,
$col17 TEXT NOT NULL,
$col18 TEXT NOT NULL,
$col19 TEXT NOT NULL,
$col20 TEXT NOT NULL,
$col21 TEXT NOT NULL

)

''');
await db.execute('''

CREATE TABLE $table3 (

$col29 INTEGER PRIMARY KEY,
$col23 TEXT,
$col24 TEXT NOT NULL,
$col25 TEXT NOT NULL,
$col26 TEXT NOT NULL,
$col27 TEXT NOT NULL,
$col28 TEXT NOT NULL

)

''');
await db.execute('''

CREATE TABLE $table4 (

$col34 INTEGER PRIMARY KEY,
$col30 TEXT,
$col31 TEXT NOT NULL,
$col32 TEXT NOT NULL,
$col33 TEXT NOT NULL

)

''');
await db.execute('''

CREATE TABLE $table5 (

$col37 INTEGER PRIMARY KEY,
$col35 TEXT,
$col36 TEXT NOT NULL

)

''');

await db.execute('''

CREATE TABLE $table (

$col1 INTEGER PRIMARY KEY,
$col2 TEXT NOT NULL,
$col3 TEXT NOT NULL,
$col4 TEXT NOT NULL,
$col5 TEXT NOT NULL,
$col6 TEXT NOT NULL,
$col7 TEXT NOT NULL,
$col8 TEXT NOT NULL

)

''');


}



// Helper methods



// Inserts a row in the database where each key in the Map is a column name

// and the value is the column value. The return value is the id of the

// inserted row.

Future<int> insert(Map<String, dynamic> row) async {

Database db = await instance.database;

return await db.insert(table, row);

}
Future<int> insert1(Map<String, dynamic> row) async {

Database db = await instance.database;

return await db.insert(table1, row);

}
Future<int> insert2(Map<String, dynamic> row) async {

Database db = await instance.database;

return await db.insert(table2, row);

}
Future<int> insert3(Map<String, dynamic> row) async {

Database db = await instance.database;

return await db.insert(table3, row);

}
Future<int> insert4(Map<String, dynamic> row) async {

Database db = await instance.database;

return await db.insert(table4, row);

}
Future<int> insert5(Map<String, dynamic> row) async {

Database db = await instance.database;

return await db.insert(table5, row);

}
// All of the rows are returned as a list of maps, where each map is 

// a key-value list of columns.

Future<List<Map<String, dynamic>>> queryAllRows() async {

Database db = await instance.database;

return await db.query(table);

}
Future<List<Map<String, dynamic>>> queryAllRows1() async {

Database db = await instance.database;

return await db.query(table1);

}
Future<List<Map<String, dynamic>>> queryAllRows2() async {

Database db = await instance.database;

return await db.query(table2);

}

Future<List<Map<String, dynamic>>> queryAllRows3() async {

Database db = await instance.database;

return await db.query(table3);

}
Future<List<Map<String, dynamic>>> queryAllRows4() async {

Database db = await instance.database;

return await db.query(table4);

}
Future<List<Map<String, dynamic>>> queryAllRows5() async {

Database db = await instance.database;

return await db.query(table5);

}

// All of the methods (insert, query, update, delete) can also be done using

// raw SQL commands. This method uses a raw query to give the row count.

Future<int> queryRowCount() async {

Database db = await instance.database;

return Sqflite.firstIntValue(await db.rawQuery('SELECT COUNT(*) FROM $table'));

}



// We are assuming here that the id column in the map is set. The other 

// column values will be used to update the row.

Future<int> update(Map<String, dynamic> row) async {

Database db = await instance.database;

int id = row[col1];

return await db.update(table, row, where: '$col1 = ?', whereArgs: [id]);

}



// Deletes the row specified by the id. The number of affected rows is 

// returned. This should be 1 as long as the row exists.

Future<int> delete(int id) async {

Database db = await instance.database;

return await db.delete(table, where: '$col1 = ?', whereArgs: [id]);

}

}
