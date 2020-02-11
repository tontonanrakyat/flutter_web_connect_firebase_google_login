import 'package:flutter/material.dart';
import '../services/sv_firebase_auth.dart';
import '../extensions/hover_extensions.dart';

class HomeScreen extends StatelessWidget {
  final String userMail;

  HomeScreen(this.userMail);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Welcome " + userMail),
            RaisedButton(
              child: Text("log out"),
              onPressed: () {
                SvFirebaseAuth().logout();
              },
            ).showCursorOnHover
          ],
        ),
      ),
    );
  }
}
