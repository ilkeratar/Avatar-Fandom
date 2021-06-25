import 'package:avatar_fandom/burc-gruplar.dart';
import 'package:avatar_fandom/screens/about-screen.dart';
import 'package:avatar_fandom/screens/avatar-list.dart';
import 'package:avatar_fandom/screens/karakter-yarat.dart';
import 'package:avatar_fandom/screens/login-screen.dart';
import 'package:avatar_fandom/screens/profil-screen.dart';
import 'package:avatar_fandom/screens/pokelist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MainDrawer extends StatelessWidget {
  String nickname;
  String dg;
  BurcBulma burcum;
  MainDrawer({this.nickname,this.burcum,this.dg});

  @override
  Widget build(BuildContext context) {
    var data=[];
    data.add(nickname);
    data.add(burcum);
    data.add(dg);
    return Drawer(
      child: Column(children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: <Color>[
              Colors.indigo,
              Colors.brown
            ])
          ),
          width: double.infinity,
          padding: EdgeInsets.all(20),
          child: Center(
            child: Column(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.only(top: 30),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: DecorationImage(image: AssetImage('assets/'+burcum.grup.toLowerCase()+'.png'),
                    fit: BoxFit.fill),
                  ),
                ),
                Text(nickname,style: TextStyle(fontFamily: 'Montserrat',fontSize: 22,color: Colors.white),),
              ],
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: <Color>[
                Colors.deepPurpleAccent,
                Colors.indigo
              ])
          ),
          child: Column(
            children: [CustomListTile(Icons.person,'Profil',()=>{
            Navigator.push(
            context,
            MaterialPageRoute(
            builder: (context) =>ProfilScreen(),
            settings: RouteSettings(
            arguments: data,
            ),
            ))
            }),
              CustomListTile(Icons.contacts,'Karakter Listesi',()=>{Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AvatarListesi(),
                  )),}),
              CustomListTile(Icons.supervised_user_circle,'Karakter Yarat',()=>{Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => KarakterYarat(),
                  )),}),
              CustomListTile(Icons.supervised_user_circle,'Pokemon Listesi',()=>{Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PokeListesi(),
                  )),}),
              CustomListTile(Icons.info_outline,'Hakkında',()=>{Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AboutScreen(),
                  )),
              }),
              CustomListTile(Icons.arrow_back,'Çıkış Yap',()=>{Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  )),}
              ),

            ],
          ),
          height:557,
        ),

      ],
      ),
    );
  }
}
// ignore: must_be_immutable
class CustomListTile extends StatelessWidget {
  IconData icon;
  String text;
  Function onTap;

  CustomListTile(this.icon,this.text,this.onTap);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0,0,8.0,0),
      child: Container(
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color:Colors.grey.shade400,width: 1))
        ),
        child: InkWell(
          onTap: onTap,
          child: Container(
            height:60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(icon,color: Colors.white,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(text,style: TextStyle(fontSize: 16,color: Colors.white),),
                    ),
                  ],
                ),
                Icon(Icons.arrow_right,color: Colors.white)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

