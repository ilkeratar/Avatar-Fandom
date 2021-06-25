import 'package:avatar_fandom/pallete.dart';
import 'package:avatar_fandom/screens/login-screen.dart';
import 'package:avatar_fandom/service/auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fluttertoast/fluttertoast.dart';
class YeniKayitOlustur extends StatefulWidget {
  @override
  _YeniKayitOlusturState createState() => _YeniKayitOlusturState();
}

class _YeniKayitOlusturState extends State<YeniKayitOlustur> {
  final TextEditingController _nickController=TextEditingController();
  final TextEditingController _dateController=TextEditingController();
  final TextEditingController _emailController=TextEditingController();
  final TextEditingController _passwordController=TextEditingController();
  final TextEditingController _passwordAgainController=TextEditingController();


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
      _authService.createPerson(_nickController.text, _date,
          _emailController.text, _passwordController.text).then((value) {});
       Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LoginScreen(),
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
    return Stack(children: [
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
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: (){Navigator.pop(context);},
            icon: Icon(
              Icons.arrow_back_ios,
              color: kWhite,
            ),
          ),
          title: Text('Yeni Hesap Oluştur',style: kBodyText,),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Center(
            child:Column(children: [
              SizedBox(height: size.width*0.1,),
              Stack(children: [
                Center(child: CircleAvatar(
                  radius: size.width*0.14,
                  backgroundColor: Colors.grey[400].withOpacity(0.5),
                  child: Icon(FontAwesomeIcons.user,color: kWhite,size: size.width*0.1,),
                ),),
                Positioned(
                  top: size.height * 0.08,
                  left: size.width * 0.56,
                  child: Container(
                    height: size.width * 0.1,
                    width: size.width * 0.1,
                    decoration: BoxDecoration(
                      color: kBlue,
                      shape: BoxShape.circle,
                      border: Border.all(color: kWhite, width: 2),
                    ),
                    child: Icon(
                      FontAwesomeIcons.arrowUp,
                      color: kWhite,
                    ),
                  ),
                )
              ],),
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
                    controller: _nickController,
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
                    controller: _dateController,
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
                  child: TextField(
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
                  child: TextField(
                    controller: _passwordAgainController,
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
                      hintText: "Şifre Doğrula",
                      hintStyle: kBodyText,
                    ),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                    textInputAction: TextInputAction.done,
                  ),
                ),
              ),
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
                    'Kayıt Ol',
                    style: kButtonText,
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Zaten hesabın var mı?',
                    style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold
                    ,shadows: <Shadow>[
                      Shadow(offset:Offset(4.0,4.0),
                      blurRadius:4.0,
                      color:Color.fromARGB(255, 0, 0, 0))
                        ]),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/');
                    },
                    child: Text(
                      'Giriş yap',
                      style:TextStyle(fontSize: 18,color: Colors.blue,fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],) ,
          ),
        ),
      )
    ],);
  }
}
