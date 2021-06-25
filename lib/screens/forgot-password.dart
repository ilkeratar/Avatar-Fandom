import 'package:avatar_fandom/pallete.dart';
import 'package:flutter/material.dart';

class SifremiUnuttum extends StatefulWidget {
  @override
  _SifremiUnuttumState createState() => _SifremiUnuttumState();
}

class _SifremiUnuttumState extends State<SifremiUnuttum> {
  @override
  Widget build(BuildContext context) {
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
              title: Text('Şifremi Unuttum',style: kBodyText,),
              centerTitle: true,
            ),
            body: Column(children: [
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
              Column(children: [
                Center(
                  child: Container(width: size.width * 0.7,
                    child: Text("Emailinizi girin ve size şifrenizi sıfırlamak için bir kod göndereceğiz ",style: TextStyle(
                        color: Colors.white,fontSize: 16
                    ),),),
                ),
                SizedBox(height: 10,),
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
                        onChanged: (text){},
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(20),
                          border: InputBorder.none,
                          hintText: 'Email',
                        ),
                      ),
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
                    onPressed: (){},
                    child: Text(
                      'Gönder',
                      style: kButtonText,
                    ),
                  ),
                ),
              ],),
            ],),
          )
        ],
      );
  }
}
