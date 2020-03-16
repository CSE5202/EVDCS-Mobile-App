import 'dart:async';
import 'dart:io' as io;
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

class DBProvider {
  DBProvider._();
  static final DBProvider db = DBProvider._();
}

class DBHelper {
  static Database _db;

  Future<Database> get db async{
    if (null != _db){
      return _db;
    }
    _db  = await initDb();
    return _db;
  }
  initDb() async{
    io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path,"TestDb.db");
    var db = await openDatabase(path, version:1, onCreate: _onCreate);
    return db;
  }
  _onCreate(Database db, int version) async{
    await db.execute("CREATE TABLE profile(""PROFILE_ID INTEGER PRIMARY KEY,""FIRST_NAME VARCHAR(50),""MIDDLE_NAME VARCHAR(50),""LAST_NAME VARCHAR(50),""GENDER VARCHAR(10),""PHONE_NO VARCHAR(255),""ADDRESS VARCHAR(255) FORIGN KEY,""AGE INTEGER,""CREATED_AT TIMESTAMP,""UPDATED_AT TIMESTAMP"")");
    await db.execute("CREATE TABLE address(""ID BIGINT,""PROFILE_ID INTEGER FORIGN KEY(PROFILE_ID) REFERENCE profile,""ADDRESS VARCHAR(255),""ADDRESS2 VARCHAR(255),""ZIPCODE VARCHAR(255),""SUBCITY VARCHAR(255),""CREATED_AT TIMESTAMP,""UPDATED_AT TIMESTAMP"")");
    await db.execute("CREATE TABLE drivers(""DRIVER_LICENCE_NO VARCHAR(255),""PROFILE_ID INTEGER FORIGN KEY(PROFILE_ID) REFERENCE profile,""PLATE_ID INTEGER,""LICENCE_ISSUED_DATE DATE,""CREATED_AT TIMESTAMP,""UPDATED_AT TIMESTAMP"")");
    await db.execute("CREATE TABLE deployment(""ID INTEGER PRIMARY KEY,""ROUTE_ID INTEGER FORIGN KEY(ID) REFERENCE routes,""VEHICLE_PLATE_NO VARCHAR FORIGN KEY(PLATE_NO) REFERENCE vehicles,"")");
    await db.execute("CREATE TABLE assign_vehicle(""ID INTEGER PRIMARY KEY,""DRIVER_LICENCE VARCHAR(255) FORIGN KEY(DRIVER_LICENCE_NO) REFERENCE drivers,""VEHICLE_PLATE_NO VARCHAR(255) FORIGN KEY(PLATE_NO) REFERENCE vehicles,""ROUTE_ID INTEGER FORIGN KEY(ID) REFERENCE routes,""date DATE"")");
    await db.execute("CREATE TABLE penality(""ID INTEGER PRIMARY KEY,""PENALITY_TYPE VARCHAR,""VEHICLE_PLATE_NO VARCHAR(255),""DRIVER_LICENCE VARCHAR(255) FORIGN KEY(DRIVER_LICENCE_NO) REFERENCE drivers,""CREATED_AT TIMESTAMP,""UPDATED_AT TIMESTAMP"")");
    await db.execute("CREATE TABLE attendance(""ID INTEGER PRIMARY KEY,""VEHICLE_PLATE_NO VARCHAR(255),""DRIVER_LICENCE VARCHAR(255) FORIGN KEY(DRIVER_LICENCE_NO) REFERENCE drivers,""date DATETIME,""STATUS VARCHAR(255),"")");
    await db.execute("CREATE TABLE routes(""ID INTEGER PRIMARY KEY,""ROUTETYPE VARCHAR(255),""LENGTH DOUBLE(20,0),""SOURCE BIGINT,""DESTINATION BIGINT,""CREATED_AT TIMESTAMP,""UPDATED_AT TIMESTAMP"")");
    await db.execute("CREATE TABLE station(""ID INTEGER PRIMARY KEY,""NAME VARCHAR(50),""LOCATION BIGINT,""SUBCITY_NAME VARCHAR(50),""CREATED_AT TIMESTAMP,""UPDATED_AT TIMESTAMP"")");
    await db.execute("CREATE TABLE vehicles(""ID INTEGER PRIMARY KEY,""PLATE_NO VARCHAR(50),""MODEL VARCHAR(50),""VEHICLE_NAME VARCHAR(50),""CREATED_AT TIMESTAMP,""UPDATED_AT TIMESTAMP"")");
    await db.execute("CREATE TABLE vehicle_driver(""ID INTEGER PRIMARY KEY,""DRIVER_ID BIGINT,""LOCATION_ID BIGINT,""VEHICLE_PLATE_NO VARCHAR(50),""CREATED_AT TIMESTAMP,""UPDATED_AT TIMESTAMP"")");
    await db.execute("CREATE TABLE location(""ID INTEGER PRIMARY KEY,""DRIVER_ID BIGINT,""LOCATION_ID BIGINT,""VEHICLE_PLATE_NO VARCHAR(50),""CREATED_AT TIMESTAMP,""UPDATED_AT TIMESTAMP"")");

    
 }
}