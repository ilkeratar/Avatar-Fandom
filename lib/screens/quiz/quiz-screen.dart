import 'dart:async';
import 'package:avatar_fandom/screens/quiz/constants.dart';
import 'package:avatar_fandom/screens/quiz/test_verileri.dart';
import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<Widget> secimler = [];
  TestVerileri test_1 = TestVerileri();
  double puan=0;
  Timer timer;
  int start=10;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }
  @override
    void dispose() {
      // TODO: implement dispose
      super.dispose();
      timer.cancel();
    }
  void startTimer(){
    timer =Timer.periodic(Duration(seconds:1),(Timer timer){
      setState(() {
        if(start<1){
        butonFonk(null);
        }else{
          start--;
        }
      });



    });
  }

  void butonFonk(bool secilenButon) {
    if (test_1.testBittiMi()) {
      timer.cancel();
      setState(() {
        if(test_1.getSoruYaniti() == secilenButon){
          secimler.add(kDogruIconu);
          puan=(100*(puan+1))/8;
          puan = num.parse(puan.toStringAsFixed(2));
        }else{
          secimler.add(kYanlisIconu);
          puan = (100*puan)/8;
          puan = num.parse(puan.toStringAsFixed(2));
        }
      });

      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: new Text("BRAVO! Testi Bitirdiniz"),
            content: new Text("Başarı Yüzdeniz: %$puan"),
            actions: <Widget>[
              new FlatButton(
                child: new Text("Başa Dön"),
                onPressed: () {
                  Navigator.of(context).pop(Navigator.of(context).pop());

                  setState(() {
                    test_1.testiSifirla();
                    secimler = [];
                    puan=0;
                  });
                },
              ),
            ],
          );
        },
      );

    } else {
      setState(() {
        if(test_1.getSoruYaniti() == secilenButon){
          secimler.add(kDogruIconu);
          puan++;
        }else{
          secimler.add(kYanlisIconu);
        }
        test_1.testBittiMi();
        start=10;
        test_1.sonrakiSoru();
      });
    }
  }



  @override
  Widget build(BuildContext context) {
    String pictureNo=test_1.getPicture();
    return Scaffold(
      backgroundColor: Colors.indigo[800],
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(15.0),
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Center(
                      child: Image.asset('assets/$pictureNo',width: 300,height: 430,)
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      test_1.getSoruMetni(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              Wrap(
                children: secimler,
                spacing: 3,
              ),
              Container(
                child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6.0),
                      child: Row(children: <Widget>[
                         Expanded(
                           child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 6),
                                  child: RaisedButton (
                                    padding: EdgeInsets.all(12),
                                    textColor: Colors.white,
                                    color: Colors.green[400],
                                    child: Icon(
                                      Icons.thumb_up,
                                      size: 30.0,
                                    ),
                                    onPressed: () {
                                      butonFonk(true);
                                    },
                                  )),
                         ),
                        Expanded(
                          child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 6),
                                  child: RaisedButton(
                                    padding: EdgeInsets.all(12),
                                    textColor: Colors.white,
                                    color: Colors.red[400],
                                    child: Icon(Icons.thumb_down, size: 30.0),
                                    onPressed: () {
                                      butonFonk(false);
                                    },
                                  )),
                        ),
                      ])),
              ),


                  Center(child: Text('$start',style: TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Times New Roman',
                    color: Colors.white60
                  ),),),
            ],
          ),
        ),
      ),
    );
  }
}
