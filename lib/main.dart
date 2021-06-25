import 'package:avatar_fandom/screens/avatar-list.dart';
import 'package:avatar_fandom/screens/home-screen.dart';
import 'package:avatar_fandom/screens/login-screen.dart';
import 'package:avatar_fandom/screens/main-drawer.dart';
import 'package:avatar_fandom/screens/profil-screen.dart';
import 'package:avatar_fandom/screens/quiz/quiz-screen.dart';
import 'package:firebase_core/firebase_core.dart';
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
        '/': (context) => App(),
        '/login': (context) => LoginScreen(),
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
class App extends StatefulWidget {
  // Create the initialization Future outside of `build`:
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  /// The future is part of the state of our widget. We should not call `initializeApp`
  /// directly inside [build].
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire:
      future: _initialization,
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          return Scaffold(
            body: Center(
              child: Text("Hata çıktı"+snapshot.error.toString()),
            ),
          );
        }

        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return LoginScreen();
        }

        // Otherwise, show something whilst waiting for initialization to complete
        return Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}

