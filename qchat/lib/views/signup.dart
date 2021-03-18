import 'package:qchat/widgets/widget.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.bottomCenter,
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: ExactAssetImage('assets/images/qlogo1.png'))),
            ),
            SizedBox(height: 1),
            Container(
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: [
                  TextField(
                    style: mediumTextStyle(),
                    decoration: textFieldInputDecoration('username'),
                  ),
                  TextField(
                    style: mediumTextStyle(),
                    decoration: textFieldInputDecoration('password'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              alignment: Alignment.centerRight,
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 37, vertical: 8),
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'Quicksand',
                        decoration: TextDecoration.underline),
                  )),
            ),
            SizedBox(height: 24),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width - 70,
              padding: EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [const Color(0xFFF06292), const Color(0xff2A75BC)]),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text(
                'Login',
                style: mediumTextStyle(),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width - 70,
              padding: EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text('Register',
                  style: TextStyle(
                    color: Colors.black87,
                    fontFamily: 'Quicksand',
                    fontSize: 17,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
