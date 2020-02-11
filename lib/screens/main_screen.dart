import 'package:flutter/material.dart';
import 'package:firebase/firebase.dart' as fb;
import 'home_screen.dart';
import 'login_screen.dart';
import 'splash_screen.dart';
// import 'package:firebase/firebase.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: fb.auth().onAuthStateChanged,
      builder: (BuildContext context, AsyncSnapshot<fb.User> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return SplashScreen();
        } else {
          if (snapshot.hasData && snapshot.data != null) {
            return HomeScreen(snapshot.data.email);
          }
          return LoginScreen();
        }
      },
    );
  }
}
