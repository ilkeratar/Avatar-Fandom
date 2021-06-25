import 'package:avatar_fandom/screens/avatar-grafik.dart';
import 'package:flutter/material.dart';
import 'package:avatar_fandom/chars.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:avatar_fandom/pie_data.dart';
import 'package:avatar_fandom/pie_chart_sections.dart';
import 'package:avatar_fandom/indicators_widget.dart';
class AvatarListesi extends StatefulWidget {
  @override
  _AvatarListesiState createState() => _AvatarListesiState();
}

class _AvatarListesiState extends State<AvatarListesi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(title: Text("Karakter Listesi"),backgroundColor: Colors.indigo,
        actions: <Widget>[ PopupMenuButton(
            itemBuilder: (context){
              return [
                PopupMenuItem(
                  child: ListTile(
                    leading: Icon(Icons.account_circle_rounded,color: Colors.teal,),
                    title: Text("Ulus Grafiği"),
                    onTap: (){
                      Navigator.pop(context);
                      Navigator.push( context, MaterialPageRoute( builder: (context) => AvatarGrafik()), ).then((value) => setState(() {}));
                    },
                  ),
                ),
              ];
            }
        ),],
      ),

      body: listehazirlama(),
    );
  }

  Widget listehazirlama() {
    return ListView.builder(itemBuilder: (BuildContext context, int index){
      return tekSatirBurc(context,index);
    },
    itemCount: Chars.charlist.length,);
  }

  Widget tekSatirBurc(BuildContext context, int index) {

    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: Image.asset("assets/"+Chars.resim[index],width: 64,height: 64,),
          title: Text(Chars.charlist[index],style: TextStyle(fontSize: 24,fontWeight: FontWeight.w400,color: Colors.pink.shade500),),
          subtitle: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(Chars.aciklama[index],style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
          ),
          trailing: Image.asset("assets/"+Chars.kucukresim[index],width: 30,height: 30,),
        ),
      ),
    );

  }
}
