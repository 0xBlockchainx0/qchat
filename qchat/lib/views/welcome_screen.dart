import 'package:qchat/views/registeragree.dart';
import 'package:qchat/views/signup.dart';
import 'package:qchat/widgets/widget.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'login.dart';

class Home extends StatefulWidget {
  static String id = 'home';

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  // AnimationController controller;
  // Animation animation;

  // @override
  // void initState() {
  //   super.initState();

  //   controller = AnimationController(
  //     duration: Duration(
  //       seconds: 1,
  //     ),
  //     vsync: this,
  //   );
  //   animation = CurvedAnimation(parent: controller, curve: Curves.ease);

  //   controller.forward();
  //   controller.addListener(() {
  //     setState(() {});
  //     print(animation.value);
  //   });
  // }

  // @override
  // void dispose() {
  //   controller.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.bottomCenter,
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: ExactAssetImage('assets/images/qlogo1.png'))),
            ),
            SizedBox(height: 1),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 44),
                alignment: Alignment.bottomCenter,
                child: Text(
                  'Lorem Impsum Dolor Amet',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Quicksand',
                      fontSize: 15),
                )),
            SizedBox(height: 174),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.leftToRight, child: Login()),
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
            ),
            SizedBox(
              height: 16,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.leftToRight,
                    child: RegisterAgree(),
                  ),
                );
              },
              child: Container(
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
            ),
          ],
        ),
      ),
    );
  }
}
