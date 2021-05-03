import 'package:flutter/material.dart';
import 'package:qchat/widgets/widget.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController searchTextEditingController =
      new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBarMain(context),
        body: Container(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: searchTextEditingController,
                        style: TextStyle(
                            color: Colors.white, fontFamily: 'Quicksand'),
                        decoration: InputDecoration(
                          hintText: 'Search username....',
                          hintStyle: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 37,
                      width: 37,
                      padding: EdgeInsets.all(8),
                      child: Image.asset('assets/images/logoooo.png'),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
