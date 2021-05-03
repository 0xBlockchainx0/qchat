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
        scaffoldBackgroundColor: Color(0xff00041d),
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

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//           gradient: LinearGradient(
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//               colors: [Colors.purple, Colors.orange])),
//       child: Scaffold(
//           // By defaut, Scaffold background is white
//           // Set its value to transparent
//           body: Center(
//         child: Container(
//           width: 200,
//           height: 200,
//           color: Colors.white,
//         ),
//       )),
//     );
//   }
// }
