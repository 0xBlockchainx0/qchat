import 'package:qchat/views/search.dart';
import 'package:qchat/views/signup.dart';
import 'package:qchat/widgets/body.dart';
import 'package:qchat/widgets/main_drawer.dart';
import 'package:qchat/widgets/widget.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:gradient_bottom_navigation_bar/gradient_bottom_navigation_bar.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:web_socket_channel/status.dart' as status;
import 'package:flutter_svg/flutter_svg.dart';

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
  var _title = 'room 1';
  var _messages = '';

  // Constructor
  _HomeInAppState() {
    debugPrint('START');
    var ws = IOWebSocketChannel.connect(Uri.parse('wss://ws.emupedia.net'));
    StreamBuilder(
      stream: ws.stream,
      builder: (context, snapshot) {
        debugPrint(snapshot.data);
        return Text(snapshot.hasData ? '${snapshot.data}' : '');
      },
    );

    Timer(Duration(seconds: 3), () {
      debugPrint('sent auth command');
      ws.sink.add('{"cmd":"auth"}');
    });
    Timer.periodic(Duration(seconds: 5), (timer) {
      ws.sink.add('ping');
    });
  }

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
          title: Row(
            children: [
              Container(
                height: 45,
                child: SizedBox(
                    child: Image.asset(
                  'assets/images/logox.png',
                )),
              ),
              // Container(
              //     padding: const EdgeInsets.symmetric(horizontal: 40),
              //     child: SizedBox(
              //         child: Icon(
              //       Icons.explore_rounded,
              //     ))),
              // Container(child: Icon(Icons.explore_rounded)),
            ],
          ),
          actions: [
            GestureDetector(
              onTap: () {
                // authMethods.signOut();
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SearchScreen(),
                    ));
              },
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Icon(Icons.search)),
            )
          ],
        ),
        drawer: MainDrawer(),
        body: Body(),
        // body: Column(
        //   children: <Widget>[
        //     Container(
        //       margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        //       padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        //       height: 50,
        //       width: double.infinity,
        //       decoration: BoxDecoration(
        //         borderRadius: BorderRadius.circular(20),
        //         border: Border.all(color: Colors.white),
        //       ),
        //       child: SvgPicture.asset(
        //         'assets/icons/search.svg',
        //         color: Colors.white,
        //       ),
        //     )
        //   ],
        // ),
        bottomNavigationBar: GradientBottomNavigationBar(
          fixedColor: Colors.white,
          backgroundColorStart: Colors.pink[400],
          backgroundColorEnd: Colors.blue[400],
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text('Wallet')),
            BottomNavigationBarItem(
                icon: Icon(Icons.wallet_membership), title: Text('QUA')),
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
