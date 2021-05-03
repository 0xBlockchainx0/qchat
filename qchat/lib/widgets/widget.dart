// import 'package:flutter_search_bar/flutter_search_bar.dart';
import 'package:flutter/material.dart';

Widget appBarMain(BuildContext context) {
  return AppBar(
    centerTitle: true,
    title: Image.asset(
      'assets/images/logox.png',
      height: 45,
    ),
    flexibleSpace: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: <Color>[Colors.pink[400], Colors.blue[400]]),
      ),
    ),
    // actions: [searchBarApp().getSearchAction(context)],
  );
}

InputDecoration textFieldInputDecoration(String hintText) {
  return InputDecoration(
      hintText: hintText,
      hintStyle: TextStyle(color: Colors.white54),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      ),
      enabledBorder:
          UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)));
}

TextStyle simpleTextStyle() {
  return TextStyle(color: Colors.white, fontSize: 16);
}

TextStyle mediumTextStyle() {
  return TextStyle(color: Colors.white, fontFamily: 'Quicksand', fontSize: 18);
}

// class Background extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         image: DecorationImage(
//             image: AssetImage('assets/images/logooooo.jpg'), fit: BoxFit.cover),
//       ),
//     );
//   }
// }

//BUTON ROTUND
// Container(
//   child: TextField(
//       decoration: InputDecoration(
//           labelText: 'Password',
//           fillColor: Colors.white,
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(30),
//             borderSide: BorderSide(
//               color: Colors.purple,
//             ),
//           ),
//           enabledBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(30),
//               borderSide: BorderSide(
//                 color: Colors.purple,
//                 width: 2.0,
//               )))),
// ),
