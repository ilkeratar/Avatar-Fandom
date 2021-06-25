import 'dart:ui';

import 'package:avatar_fandom/burc-gruplar.dart';
import 'package:avatar_fandom/pallete.dart';
import 'package:avatar_fandom/screens/quiz/quiz-screen.dart';
import 'package:flutter/material.dart';
import './main-drawer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String nickName='';
  int ay;
  int gun;
  int yas;
  int yil;
  BurcBulma burcum =new BurcBulma();
  @override
  Widget build(BuildContext context) {
    var data=[];
    data= ModalRoute.of(context).settings.arguments;
    nickName=data[0];
    ay=data[1];
    gun=data[2];
    yas=data[3];
    yil=data[4];
    String dg='$gun/$ay/$yil';
    burcum.BurcHesapla(ay, gun);

    String nicknamegetir(){
      return data[0];
    }

    Size size = MediaQuery.of(context).size;
    return Stack(
      children:[ Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/arkaplann.jpg'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(Colors.black12,
                      BlendMode.darken)
                )),
          ),

        Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Image(
            image: AssetImage('assets/logo1.png'),height: 60,
          ),
          backgroundColor: Colors.transparent,
          centerTitle: true,

        ),
          drawer: MainDrawer(nickname: nickName,burcum: burcum,dg: dg),
          body: SingleChildScrollView(
            child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top:8.0,bottom: 8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.02),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    width:size.width * 1,
                    height: size.height * 0.3,
                    child: Stack(
                      children: [
                        Container(
                          height: size.height * 0.14,
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                width:size.width * 0.37,
                                height: size.height * 0.14,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left:8.0),
                                      child: Text(nickName,style: TextStyle(fontFamily: 'Montserrat',fontSize: 22,color: Colors.white),),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left:8.0),
                                        child: Text('$yas',style: TextStyle(letterSpacing: 2 ,fontFamily: 'Montserrat',fontSize: 20,color: Colors.white),),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage('assets/'+burcum.burc.toLowerCase()+'.png'),
                                              fit: BoxFit.contain,
                                            ),),
                                        margin: EdgeInsets.only(right: 35) ,
                                        width: 70,height: 58,)
                                    ],
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/'+burcum.grup.toLowerCase()+'.png'),
                                    fit: BoxFit.cover,
                                  ),),
                                width: 70,height: 70,
                              ),
                              Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(top: 10,left: 10),
                                    width:size.width * 0.4,
                                    height: size.height * 0.05,
                                    child: Text(
                                      burcum.grup,
                                      style: TextStyle(
                                        shadows: [
                                          Shadow(color: Colors.deepPurple,
                                              blurRadius: 2.0,
                                              offset: Offset(3,1))
                                        ],
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(top: 0,left: 5),
                                    width:size.width * 0.37,
                                    height: size.height * 0.07,
                                    child: Text(
                                     burcum.aciklama,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top:110,left:8),
                            child: Text(burcum.uzunaciklama, style: kButtonText,))
                      ],
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0,bottom: 8.0),
                  child: Container(
                    decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(16),
                    ),
                    width:size.width * 1,
                    height: size.height * 0.19,
                    child: Stack(
                      children: [ Column(
                            children: [
                              Text(burcum.avatarbaslik,style: TextStyle(
                                shadows: [
                                  Shadow(color: Colors.black,
                                  blurRadius: 3.0,
                                  offset: Offset(4,1))
                                ],
                                color: burcum.renk,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),),
                              Container(
                                width: double.infinity,
                                height: 120.0,
                                child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: burcum.stories.length + 1,
                                    itemBuilder: (BuildContext context,int index){
                                    if(index==0){
                                      return SizedBox(width: 2.0,);
                                    }
                                    return Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.all(10.0),
                                          width: 70.0,
                                          height: 70.0,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            boxShadow: [BoxShadow(
                                              color: Colors.black45,
                                              offset: Offset(0,2),
                                              blurRadius: 6.0,
                                            ),
                                            ],
                                          ),
                                          child: CircleAvatar(
                                            backgroundColor:burcum.renk,
                                            child: ClipOval(
                                              child: Image(
                                                height: 60.0,
                                                width: 60.0,
                                                image: AssetImage(burcum.stories[index-1]),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Text(burcum.karakterler[index-1],style: TextStyle(
                                            shadows: [
                                              Shadow(color: Colors.black,
                                                  blurRadius: 3.0,
                                                  offset: Offset(3,1))
                                            ],
                                            fontWeight: FontWeight.bold,color: Colors.white),)
                                      ],
                                    );
                                    }
                                    ),
                              ),
                              ],
                          ),
                      ],
                    ),
                  ),
                ),
              ),
              ShaderMask(
                shaderCallback: (rect) => LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.center,
                  colors: [Colors.black, Colors.transparent],
                ).createShader(rect),
                blendMode: BlendMode.overlay,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top:8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        image:DecorationImage(
                          image: burcum.quizresim,
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      width:size.width * 1,
                      height: size.height * 0.26,
                      child: TextButton(
                        onPressed: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => QuizScreen(),
                              ));
                        },
                      ),),
                  ),
                ),
              ),
            ],
        ),
          ),
      ),
      ],
    );
  }
}
