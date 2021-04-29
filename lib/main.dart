import 'package:avatar_fandom/screens/avatar-list.dart';
import 'package:avatar_fandom/screens/home-screen.dart';
import 'package:avatar_fandom/screens/login-screen.dart';
import 'package:avatar_fandom/screens/main-drawer.dart';
import 'package:avatar_fandom/screens/profil-screen.dart';
import 'package:avatar_fandom/screens/quiz/quiz-screen.dart';
import 'package:flutter/material.dart';
import 'screens/about-screen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/anasayfa': (context) => HomeScreen(),
        '/quiz': (context)=> QuizScreen(),
        'drawer':(context)=> MainDrawer(),
        '/karakter':(context)=>AvatarListesi(),
        '/profil':(context)=>ProfilScreen(),
        '/hakkinda':(context)=>AboutScreen(),
      },
    );
  }
}

