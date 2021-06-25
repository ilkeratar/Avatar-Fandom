import 'dart:async';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:avatar_fandom/models/karakter.dart';

class DatabaseHelper {
  static DatabaseHelper _databaseHelper;
  static Database _database;

  String _karakterTablo="karakter";
  String _columnID="id";
  String _columnIsim="name";
  String _columnAciklama="aciklama";
  String _columnUlus="ulus";



  factory DatabaseHelper(){
    if(_databaseHelper==null){
      _databaseHelper=DatabaseHelper._internal();
      print("DBHelper nulldi oluşturuldu");
      return _databaseHelper;
    }else{
      print("DBHelper null değildi var olan kullanılacak");
      return _databaseHelper;
    }
  }

  DatabaseHelper._internal();

  Future<Database> _getDatabase() async{
    if(_database ==null){
      print("DB nulldi oluşturulacak");
      _database=await _initializeDatabase();
      return _database;
    }else{
      print("DB null değildi var olan kullanılacak");
      return _database;
    }
  }

  _initializeDatabase() async{
    Directory klasor = await getApplicationDocumentsDirectory();
    String dbPath= join(klasor.path,"karakter.db");
    print("DB Pathi:"+dbPath);
    var karakterDB= openDatabase(dbPath,version: 1,onCreate: _createDB);
    return karakterDB;
  }

  Future<void> _createDB(Database db,int version) async{
    print("create db metotu calıstı tablo olusturulacak");
    await db.execute("CREATE TABLE $_karakterTablo ($_columnID INTEGER PRIMARY KEY AUTOINCREMENT,"
        " $_columnIsim TEXT, $_columnAciklama TEXT, $_columnUlus TEXT)");

  }
  karakterEkle(Karakter karakter) async{
    var db= await _getDatabase();
    var sonuc= await db.insert(_karakterTablo, karakter.dbyeYazmakIcinMapeDonustur(), nullColumnHack: "$_columnID");
    print("karakter dbye eklendi"+sonuc.toString());
    return sonuc;
  }
  Future<List<Map<String, dynamic>>>  tumKarakterler() async{
    var db= await _getDatabase();
    var sonuc = await db.query(_karakterTablo, orderBy: '$_columnID DESC');
    return sonuc;
  }
  Future<int> karakterSil(int id) async{
    var db=await _getDatabase();
    var sonuc = await db.delete(_karakterTablo, where: '$_columnID = ? ', whereArgs: [id]);
    return sonuc;
  }

  Future<List<Karakter>> karakterListesiGetir() async{
    var notlarMapListesi =  await tumKarakterler();
    var karakterListesi = List<Karakter>();
    for(Map map in notlarMapListesi){
      karakterListesi.add(Karakter.dbdenOkudugunMapiObjeyeDonustur(map));
    }
    return karakterListesi;
  }

}