import 'dart:io';

import 'package:avatar_fandom/models/karakter.dart';
import 'package:avatar_fandom/screens/karakter-ekleme.dart';
import 'package:avatar_fandom/utils/database_helper.dart';
import 'package:flutter/material.dart';

class KarakterYarat extends StatefulWidget {
  @override
  _KarakterYaratState createState() => _KarakterYaratState();
}

class _KarakterYaratState extends State<KarakterYarat> {
  DatabaseHelper _databaseHelper;
  List<Karakter> tumKarakterListesi;
  var _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tumKarakterListesi=List<Karakter>();
    _databaseHelper=DatabaseHelper();
    _databaseHelper.tumKarakterler().then((tumKarakterleriTutanMapListesi) {
      for(Map okunanKarakterMapi in tumKarakterleriTutanMapListesi){
        tumKarakterListesi.add(Karakter.dbdenOkudugunMapiObjeyeDonustur(okunanKarakterMapi));
      }
      print("dbden gelen karakter sayısı : "+tumKarakterListesi.length.toString());
    }).catchError((onError)=>print("hata: "+onError));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      key : _scaffoldKey,
      elevation: 0,
      title: Text("Kendi Karakterini Yarat"),
      actions: <Widget>[ PopupMenuButton(
          itemBuilder: (context){
            return [
              PopupMenuItem(
                child: ListTile(
                  leading: Icon(Icons.account_circle_rounded,color: Colors.teal,),
                  title: Text("Karakter Ekle"),
                  onTap: (){
                    Navigator.pop(context);
                    Navigator.push( context, MaterialPageRoute( builder: (context) => KarakterEkle()), ).then((value) => setState(() {}));
                  },
                ),
              ),
            ];
          }
      ),],
    ),
    body: Center(
      child: FutureBuilder(
        future: _databaseHelper.karakterListesiGetir(),
    builder: (context, AsyncSnapshot<List<Karakter>> snapShot) {
      if (snapShot.connectionState == ConnectionState.done) {
        tumKarakterListesi = snapShot.data;
        sleep(Duration(milliseconds: 500));
        return ListView.builder(itemCount: tumKarakterListesi.length,
            itemBuilder: (context, index) {
              return new Dismissible(
                key:new Key(tumKarakterListesi[index].toString()),
                onDismissed:(direction){
                  _kayitSil(tumKarakterListesi[index].id);
                  tumKarakterListesi.removeAt(index);
                  Scaffold.of(context).showSnackBar(new SnackBar(
                    content: new Text("Karakter Silindi"),
                  ));
                },
                child: GestureDetector(
                  onDoubleTap: (){
                    showDialog(context: context, builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text(tumKarakterListesi[index].name),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(tumKarakterListesi[index].ulus == "Ateş" ?
                            "assets/ateş ulusu.png" : tumKarakterListesi[index]
                                .ulus == "Su" ?
                            "assets/su_kabilesi.png" : tumKarakterListesi[index]
                                .ulus == "Toprak"
                                ?
                            "assets/toprak krallığı.png"
                                : "assets/hava gezginleri.png"
                              , width: 30, height: 30,)
                          ],
                        ),
                      );
                    });
                  },
                  child: Card(
                    color: Colors.teal.shade50,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(onTap: () {},
                        leading: Text(index.toString(),
                          style: TextStyle(fontSize: 20),),
                        title: Text(tumKarakterListesi[index].name,
                          style: TextStyle(fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Colors.red),),
                        subtitle: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Text(tumKarakterListesi[index].aciklama,
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),),
                        ),
                        trailing: Image.asset(
                          tumKarakterListesi[index].ulus == "Ateş" ?
                          "assets/ateş ulusu.png" : tumKarakterListesi[index]
                              .ulus == "Su" ?
                          "assets/su_kabilesi.png" : tumKarakterListesi[index]
                              .ulus == "Toprak"
                              ?
                          "assets/toprak krallığı.png"
                              : "assets/hava gezginleri.png"
                          , width: 30, height: 30,),
                      ),
                    ),
                  ),
                ),
              );
            });
      } else {
        return Center(child: Text("Yükleniyor"),);
      }
    },
      ),
    ),
    );
  }

  void _kayitSil(int id) async{
    var sonuc = await _databaseHelper.karakterSil(id);
    if(sonuc==1){
      _scaffoldKey.currentState.showSnackBar(SnackBar(
        duration: Duration(seconds: 2),
        content: Text(" kayıt silindi"),
      ));
    }else{
      _scaffoldKey.currentState.showSnackBar(SnackBar(
        duration: Duration(seconds: 2),
        content: Text("Silerken hata cıktı"),
      ));
    }
  }
}
