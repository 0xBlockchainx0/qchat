import 'package:qchat/widgets/widget.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:qchat/views/homeinapp.dart';

class Login extends StatefulWidget {
  static String id = 'login';
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
              SizedBox(height: 15),
              Container(
                alignment: Alignment.bottomCenter,
                width: 250,
                height: 220,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: ExactAssetImage('assets/images/qlogo1.png'))),
              ),
              SizedBox(height: 1),
              Container(
                alignment: Alignment.bottomCenter,
                height: 125,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: ExactAssetImage(
                            'assets/images/logoooooooooooo.png'))),
              ),
              SizedBox(height: 35),
              Container(
                alignment: Alignment.bottomCenter,
                padding: EdgeInsets.symmetric(horizontal: 50),
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
              // Container(
              //   alignment: Alignment.centerRight,
              //   child: Container(
              //       padding: EdgeInsets.symmetric(horizontal: 37, vertical: 8),
              //       child: Text(
              //         'Forgot Password?',
              //         style: TextStyle(
              //             color: Colors.white,
              //             fontSize: 14,
              //             fontFamily: 'Quicksand',
              //             decoration: TextDecoration.underline),
              //       )),
              // ),
              SizedBox(height: 85),
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
                    'Login',
                    style: mediumTextStyle(),
                  ),
                ),
                // SizedBox(
                //   height: 16,
                // ),
                // Container(
                //   alignment: Alignment.center,
                //   width: MediaQuery.of(context).size.width - 70,
                //   padding: EdgeInsets.symmetric(vertical: 20),
                //   decoration: BoxDecoration(
                //     color: Colors.white,
                //     borderRadius: BorderRadius.circular(30),
                //   ),
                //   child: Text('Register',
                //       style: TextStyle(
                //         color: Colors.black87,
                //         fontFamily: 'Quicksand',
                //         fontSize: 17,
                //       )),
                // ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
