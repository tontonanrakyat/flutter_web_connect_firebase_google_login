import 'package:flutter/material.dart';
import 'package:firebase/firebase.dart' as fb;
import 'package:flutter_web_connect_firebase_google_login/screens/main_screen.dart';

void main() {
  if (fb.apps.isEmpty) {
    fb.initializeApp(
      apiKey: "AIzaSyDXx2dQThyKKnXTmojxYgkDdFDdKW5d2is",
      authDomain: "riset-flutter.firebaseapp.com",
      databaseURL: "https://riset-flutter.firebaseio.com",
      projectId: "riset-flutter",
      storageBucket: "riset-flutter.appspot.com",
      messagingSenderId: "630852552783",
      appId: "1:630852552783:web:49023e13f47e8058fdc23a",
      measurementId: "G-GB69BDPLDE",
    );
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
