import 'package:avatar_fandom/models/karakter.dart';
import 'package:flutter/material.dart';
import 'package:avatar_fandom/utils/database_helper.dart';

class KarakterEkle extends StatefulWidget {
  @override
  _KarakterEkleState createState() => _KarakterEkleState();
}

class _KarakterEkleState extends State<KarakterEkle> {
  var _currentItemSelected = 'Ateş';
  DatabaseHelper _databaseHelper;
  List<Karakter> tumKarakterListesi;
  var _controller=TextEditingController();
  var _controller2=TextEditingController();
  var _formKey = GlobalKey<FormState>();
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
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/wp2.png'),
                fit: BoxFit.cover,
              )),
        ),
        Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.transparent,
          appBar: AppBar(title: Text("Kendi Karakterini Ekle"),backgroundColor: Colors.transparent,),
          body: Column(
            children: [SizedBox(height: size.height * 0.3,),
              Container(
                child: Column(
                  children: [
                  Form(
                    key: _formKey,
                    child: Column(children: [
                      Padding(padding: const EdgeInsets.only(right: 20.0,left: 20.0,bottom: 8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[800].withOpacity(0.5),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: TextFormField(
                          controller: _controller,
                          validator: (kontrolEdilecekIsimDegeri){
                            if(kontrolEdilecekIsimDegeri.length < 3){
                              return "en az 3 karakter olmalı";
                            }else return null;
                          },
                          decoration: InputDecoration(
                              labelText: "  Karakter ismi ",
                              labelStyle: TextStyle(color: Colors.white),

                          ),
                        ),
                      ),
                      ),
                      Padding(padding: const EdgeInsets.only(right: 20.0,left: 20.0,bottom: 8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[800].withOpacity(0.5),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: TextFormField(
                            controller: _controller2,
                            validator: (kontrolEdilecekIsimDegeri){
                              if(kontrolEdilecekIsimDegeri.length < 3){
                                return "en az 5 karakter olmalı";
                              }else return null;
                            },
                            decoration: InputDecoration(
                                labelText: "  Karakter açıklaması ",
                                labelStyle: TextStyle(color: Colors.white),

                            ),
                          ),
                        ),
                      ),
                      DropdownButton<String>(hint: Text("Ulus Seçin"),
                      items: uluslar.map((String dropDownStringItem){
                        return DropdownMenuItem<String>(
                            value: dropDownStringItem,
                            child: Text(dropDownStringItem));
                      }).toList(),
                        onChanged: (String newValueSelected) {
                        setState(() {
                          this._currentItemSelected = newValueSelected;
                        });
                        },
                        value: _currentItemSelected,
                      ),
                      RaisedButton(onPressed: (){
                        if (_formKey.currentState.validate()){
                          _formKey.currentState.save();
                          _karakterEkle(Karakter(_controller.text, _controller2.text,_currentItemSelected));
                          Navigator.pop(context);
                          showAlert();
                        }
                      }, child: Text("Kaydet ve Çık"),color: Colors.teal.withOpacity(0.7),),
                    ],),
                  ),
                ],),


        ),
            ],
          ),


        ),
      ],
    );
  }
  var uluslar = ['Ateş','Su','Toprak','Hava'];

  void _karakterEkle(Karakter karakter) async{
    var eklenenYeniKarakterinIdsi = await _databaseHelper.karakterEkle(karakter);
    karakter.id= eklenenYeniKarakterinIdsi;
    if(eklenenYeniKarakterinIdsi>0){
      setState(() {
        tumKarakterListesi.insert(0, karakter);
      });
    }

  }

  void showAlert() {
    AlertDialog alertDialog;
    alertDialog = AlertDialog(
      title: Text("Kayıt Eklendi"),
    );
    showDialog(context: context, builder: (_) => alertDialog);
  }
}
