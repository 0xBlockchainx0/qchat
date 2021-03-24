import 'package:flutter/material.dart';
import 'package:qchat/views/login.dart';
import 'package:qchat/views/signup.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool showSignIn = true;

  void toggleView() {
    setState(() {
      showSignIn = !showSignIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showSignIn) {
      return Login();
    } else {
      return SignUp();
    }
  }
}
