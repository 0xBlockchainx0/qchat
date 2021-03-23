import 'package:qchat/views/homeinapp.dart';
import 'package:qchat/views/registeragree.dart';
import 'package:qchat/views/signup.dart';
import 'package:qchat/views/login.dart';
import 'package:flutter/material.dart';
import 'package:qchat/views/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quarashi App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff145C9E),
        scaffoldBackgroundColor: Color(0xff1F1F1F),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: Home.id,
      routes: {
        Home.id: (context) => Home(),
        Login.id: (context) => Login(),
        SignUp.id: (context) => SignUp(),
        RegisterAgree.id: (context) => RegisterAgree(),
        HomeInApp.id: (context) => HomeInApp(),
      },
      //home: Home(),
    );
  }
}
