import 'package:avatar_fandom/screens/home-screen.dart';
import 'package:avatar_fandom/service/auth.dart';
import 'package:flutter/material.dart';
import 'package:avatar_fandom/pallete.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:avatar_fandom/screens/forgot-password.dart';
import 'package:avatar_fandom/screens/yeni-kayit.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController=TextEditingController();
  final TextEditingController _passwordController=TextEditingController();

  AuthService _authService = AuthService();
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
      _authService
          .signIn(
          _emailController.text, _passwordController.text)
          .then((value) {});

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
          resizeToAvoidBottomInset: false,
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Container(
                      height: size.height * 0.08,
                      width: size.width * 0.8,
                      decoration: BoxDecoration(
                        color: Colors.grey[600].withOpacity(0.5),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: TextField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Icon(
                              FontAwesomeIcons.envelope,
                              size: 28,
                              color: kWhite,
                            ),
                          ),
                          hintText: "Email",
                          hintStyle: kBodyText,
                        ),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Container(
                      height: size.height * 0.08,
                      width: size.width * 0.8,
                      decoration: BoxDecoration(
                        color: Colors.grey[600].withOpacity(0.5),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: TextField(obscureText: true,
                        controller: _passwordController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Icon(
                              FontAwesomeIcons.lock,
                              size: 28,
                              color: kWhite,
                            ),
                          ),
                          hintText: "Şifre",
                          hintStyle: kBodyText,
                        ),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                        keyboardType: TextInputType.visiblePassword,
                        textInputAction: TextInputAction.done,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Container(
                      height: size.height * 0.08,
                      width: size.width * 0.8,
                      decoration: BoxDecoration(
                        color: Colors.grey[600].withOpacity(0.5),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: TextField(
                        onChanged: (text){
                          _nickNameKaydet(text);
                        },
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Icon(
                              FontAwesomeIcons.user,
                              size: 28,
                              color: kWhite,
                            ),
                          ),
                          hintText: "Nickname",
                          hintStyle: kBodyText,
                        ),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.done,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Container(
                      height: size.height * 0.08,
                      width: size.width * 0.8,
                      decoration: BoxDecoration(
                        color: Colors.grey[600].withOpacity(0.5),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: myDate,
                          labelStyle: kBodyText,
                          prefixIcon: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: IconButton(
                              icon: Icon(
                                FontAwesomeIcons.calendarDay,
                                size: 28,
                                color: kWhite,
                              ),
                              onPressed: (){
                                setState(() {
                                  _selectDate(context);
                                });
                              },
                            ),
                          ),
                          hintText: "Doğum Tarihi",
                          hintStyle: kBodyText,
                        ),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                        keyboardType: TextInputType.datetime,
                        textInputAction: TextInputAction.next,
                      ),
                    ),
                  ),
                TextButton(
                  style: ButtonStyle(
                      overlayColor: MaterialStateProperty.resolveWith(
                              (states) => Colors.black12)),
                  onPressed: ()=>{Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SifremiUnuttum(),
                      )),},
                  child: Text(
                    'Şifremi Unuttum',
                    style: TextStyle(fontSize: 16,color: Colors.black87),
                  ),
                ),
              ],),

              Container(
                height: size.height * 0.05,
                width: size.width * 0.8,
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
                    'Giriş Yap',
                    style: kButtonText,
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Container(
                height: size.height * 0.04,
                width: size.width * 0.42,
                decoration: BoxDecoration(
                  color: Colors.blueGrey[900],
                  borderRadius: BorderRadius.circular(18)
                ),
                child: TextButton(
                  onPressed: ()=>{Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => YeniKayitOlustur(),
                      )),},
                  child: Text("Yeni Hesap Oluştur",
                    style: TextStyle(fontSize: 13,color: Colors.white70),
                  textAlign: TextAlign.center,),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
