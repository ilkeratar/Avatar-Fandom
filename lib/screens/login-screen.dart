import 'package:avatar_fandom/screens/home-screen.dart';
import 'package:flutter/material.dart';
import 'package:avatar_fandom/pallete.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  int yas;
  String nickName='';
  void _nickNameKaydet(String text){
    setState(() {
      nickName=text;
    });
  }

  void kontrol(){
    if((nickName.length>1) && (myDate.toString().length >7)){
      var data=[];
      data.add(nickName);
      data.add(_date.month);
      data.add(_date.day);
      data.add(yas);
      data.add(_date.year);
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => HomeScreen(),
            settings: RouteSettings(
              arguments: data,
    ),
        ));
    }
    else{
    }
  }
  void showHata(){
      Fluttertoast.showToast(
          msg:"Nickname en az 2 karakter olmalı ve Doğum tarihiniz Boş Bırakılamaz!..",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIos: 1,
          backgroundColor: Colors.grey[600],
          textColor: Colors.white,
          fontSize: 16.0,
      );

  }


  var myDate;
  DateTime _date = DateTime.now();
  Future<Null> _selectDate(BuildContext context) async {
    DateTime _datePicker = await showDatePicker(
      context: context,
      initialDate: _date,
      firstDate: DateTime(1940),
      lastDate: DateTime(2022),
    );

    if(_datePicker != null && _datePicker != _date){
      setState(() {
        _date=_datePicker;
        myDate='${_date.day}/${_date.month}/${_date.year}';
        yas=2021-_date.year;
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    bool butonpasif = true;

    if((nickName.length>1) && (myDate.toString().length >7)){
      butonpasif=false;
    }else{
      butonpasif=true;
    }

    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/wp1.jpg'),
            fit: BoxFit.cover,
          )),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Center(
                child: Container(
                  height: size.height * 0.3,
                  width: size.width * 0.85,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/logo.png'),
                          fit: BoxFit.contain)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Container(
                  height: size.height * 0.08,
                  width: size.width * 0.8,
                  decoration: BoxDecoration(
                    color: Colors.grey[800].withOpacity(0.5),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Center(
                    child: TextField(
                      onChanged: (text){
                        _nickNameKaydet(text);
                      },
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(20),
                        border: InputBorder.none,
                        hintText: 'Nickname',
                        /*enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black54,
                    width: 1,
                  ),
                borderRadius: BorderRadius.circular(16.0),
              ),*/
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Container(
                  height: size.height * 0.08,
                  width: size.width * 0.8,
                  decoration: BoxDecoration(
                    color: Colors.grey[800].withOpacity(0.5),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Stack(
                    children: <Widget>[
                      TextField(enabled: false,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(20),
                          border: InputBorder.none,
                          hintText: 'Date Of Birth',
                          labelText: myDate,
                          labelStyle: kButtonText,
                          /*enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black54,
                      width: 1,
                    ),
                borderRadius: BorderRadius.circular(16.0),
              ),*/
                        ),
                      ),
                      Positioned(
                        top: 7,
                        right: 10,
                        bottom: 10,
                        child: IconButton(
                        icon:Icon(
                          FontAwesomeIcons.calendarDay,
                          size:27,
                          color:Colors.white70,

                        ),
                        onPressed: (){
                          setState(() {
                            _selectDate(context);
                          });
                        },
                      ),)
                    ],
                  ),
                ),
              ),
              Container(
                height: size.height * 0.05,
                width: size.width * 0.5,
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(18),
                ),
                child: TextButton(
                  style: ButtonStyle(
                      overlayColor: MaterialStateProperty.resolveWith(
                          (states) => Colors.black12)),
                  onPressed: butonpasif ? showHata : kontrol,
                  child: Text(
                    'Login',
                    style: kButtonText,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
