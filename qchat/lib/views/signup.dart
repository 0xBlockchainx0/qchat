import 'package:qchat/views/homeinapp.dart';
import 'package:qchat/widgets/widget.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class SignUp extends StatefulWidget {
  static String id = 'signup';
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.topCenter,
        width: 400,
        height: 700,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(
            'assets/images/logooooooo.png',
          ),
        )),
        child: SingleChildScrollView(
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
                      decoration: textFieldInputDecoration('select username'),
                    ),
                    TextField(
                      style: mediumTextStyle(),
                      decoration: textFieldInputDecoration('choose password'),
                    ),
                    TextField(
                      style: mediumTextStyle(),
                      decoration: textFieldInputDecoration('confirm password'),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: 14),
                        alignment: Alignment.center,
                        child: Text(
                          "Don't forget your password, it can't be reset",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Quicksand',
                              fontSize: 10),
                        )),
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: 14),
                        alignment: Alignment.center,
                        child: Text(
                          "We recommend you to store it somewhere safe.",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Quicksand',
                              fontSize: 10),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 120,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.rotate,
                        duration: Duration(seconds: 1),
                        child: HomeInApp()),
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width - 70,
                  padding: EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      const Color(0xFFF06292),
                      const Color(0xff2A75BC)
                    ]),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(
                    'Create account',
                    style: mediumTextStyle(),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
