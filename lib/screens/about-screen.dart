import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
        appBar: AppBar(
        title: Text("Hakkında"),
    backgroundColor: Colors.deepPurple[900],),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:15.0),
              child: Divider(color: Colors.white70,),
            ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir ÇINAR tarafından yürütülen 3301456 kodlu Mobil Programlama dersi kapsamında 193301064 numaralı İlker ATAR tarafından 30 Nisan 2021 günü yapılmıştır.",
            style: TextStyle(
              color: Colors.grey[300],
              fontSize: 16
            ),),
          ),
            Divider(color: Colors.white70,),
            Container(
              width: double.infinity,
              height: 500,
              margin: EdgeInsets.only(top: 10,left:10,right:10),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                image: DecorationImage(image: AssetImage('assets/avatarmode.jpg'),
                    fit: BoxFit.fill),
              ),
            ),
        ],
        ),
    );
  }
}
