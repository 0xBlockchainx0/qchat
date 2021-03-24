import 'package:qchat/views/signup.dart';
import 'package:qchat/widgets/widget.dart';
import 'package:flutter/material.dart';
import 'package:gradient_bottom_navigation_bar/gradient_bottom_navigation_bar.dart';

class HomeInApp extends StatefulWidget {
  static String id = 'homeinapp';
  @override
  _HomeInAppState createState() => _HomeInAppState();
}

class _HomeInAppState extends State<HomeInApp> {
  // AuthMethods authMethods = new AuthMethods();
  int _selectedIndex = 1;
  final _widgetOptions = [
    Text('Index 0: Home'),
    Text('Index 1: Wallet'),
    Text('Index 2: Help'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[Colors.pink[400], Colors.blue[400]]),
            ),
          ),
          title: Image.asset(
            'assets/images/logox.png',
            height: 40,
          ),
          actions: [
            GestureDetector(
              onTap: () {
                // authMethods.signOut();
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUp(),
                    ));
              },
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Icon(Icons.exit_to_app)),
            )
          ],
        ),
        drawer: Drawer(),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: GradientBottomNavigationBar(
          fixedColor: Colors.white,
          backgroundColorStart: Colors.pink[400],
          backgroundColorEnd: Colors.blue[400],
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text('Home')),
            BottomNavigationBarItem(
                icon: Icon(Icons.wallet_membership), title: Text('QUA-Wallet')),
            BottomNavigationBarItem(
                icon: Icon(Icons.help), title: Text('Help')),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.pink,
          elevation: 50,
          hoverColor: Colors.red,
          autofocus: true,
          onPressed: () {
            print('hi');
          },
          child: Icon(
            Icons.comment,
          ),
          tooltip: 'Pick Image',
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat);
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
