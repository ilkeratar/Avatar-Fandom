import 'package:avatar_fandom/pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import '../burc-gruplar.dart';

class ProfilScreen extends StatefulWidget {

  @override
  _ProfilScreenState createState() => _ProfilScreenState();
}

class _ProfilScreenState extends State<ProfilScreen> {
  String nickName='';
  String dg;
  BurcBulma burcum =new BurcBulma();

  @override
  Widget build(BuildContext context) {
    var data=[];
    data= ModalRoute.of(context).settings.arguments;
    nickName=data[0];
    burcum=data[1];
    dg=data[2];

    return Scaffold(
      appBar: AppBar(
        title: Text("Profil"),
        backgroundColor: Colors.indigoAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 75,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0,top: 15.0),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      Text("Nick: "+nickName,style: kProfilText,),
                      SizedBox(height: 10,),
                      Text("Doğum: "+dg,style: kProfilText,),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:40.0),
                    child: Text(burcum.grup,style: kProfil2Text),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:25,bottom:25),
              child: Container(
                constraints: BoxConstraints.expand(
                  height: 200
                ),
                child: Swiper(
                  autoplay: false,
                  itemBuilder: (BuildContext context, int index){
                    return new Image.asset(burcum.ulusfoto[index],
                      fit: BoxFit.fill,
                    );
                  },
                  itemCount: burcum.ulusfoto.length,
                  viewportFraction: 0.8,
                  scale: 0.9,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:10.0,right: 10.0,bottom: 20),
              child: Text(burcum.detayaciklama,
              style: kProfilText,),
            ),
            Center(child:Container(
              width: 100,
              height: 100,
              margin: EdgeInsets.only(top: 30,bottom: 10),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                image: DecorationImage(image: AssetImage('assets/'+burcum.grup.toLowerCase()+'.png'),
                    fit: BoxFit.fill),
              ),
            ), )
          ],
        ),
      ),
    );
  }
}

