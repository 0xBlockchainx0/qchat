import 'package:flutter/material.dart';
import 'package:qchat/views/signup.dart';
import 'package:qchat/widgets/widget.dart';
import 'package:page_transition/page_transition.dart';

class RegisterAgree extends StatefulWidget {
  static String id = 'registeragree';
  @override
  _RegisterAgreeState createState() => _RegisterAgreeState();
}

class _RegisterAgreeState extends State<RegisterAgree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: appBarMain(context),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              height: 300,
              width: 300,
              padding: EdgeInsets.symmetric(horizontal: 1),
              child: Image.asset('assets/images/qlogo1.png'),
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 44),
                child: Text(
                  'In Quarashi App, You control your Data',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Quicksand',
                      fontSize: 16),
                )),
            SizedBox(height: 20),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 44),
                child: Text(
                  '100% Anonimty, 100% Privacy, No Backups',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Quicksand',
                      fontSize: 13),
                )),
            SizedBox(height: 200),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 44),
                alignment: Alignment.center,
                child: Text(
                  "Tap 'Agree & Continue' to accept Quarashi Terms of service and Privacy Policy",
                  style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Quicksand',
                      fontSize: 10),
                )),
            SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.leftToRight,
                    child: SignUp(),
                  ),
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: 16,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(
                      colors: [
                        const Color(0xFFF06292),
                        const Color(0xff2A75BC)
                      ],
                    )),
                width: 300,
                height: 60,
                child: Text(
                  "Agree and Continue",
                  style: mediumTextStyle(),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
