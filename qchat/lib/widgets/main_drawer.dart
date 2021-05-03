import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(String title, IconData icon) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.white,
        size: 26,
      ),
      title: Text(
        title,
        style: TextStyle(
            color: Colors.white,
            fontFamily: 'Quicksand',
            fontSize: 15,
            fontWeight: FontWeight.bold),
      ),
      onTap: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color(0xff00041d),
        child: Column(
          children: <Widget>[
            Container(
              height: 80,
              width: double.infinity,
              padding: EdgeInsets.all(
                25,
              ),
              alignment: Alignment.centerLeft,
              color: Color(0xff00041d),
              child: Text(
                'Welcome: Username',
                style: TextStyle(
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.w900,
                    color: Colors.white),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            buildListTile('My Wallet', Icons.wallet_membership),
            buildListTile('Account', Icons.account_circle),
            buildListTile('Settings', Icons.settings),
            buildListTile('Help', Icons.help),
            SizedBox(height: 290),
            buildListTile('Logout', Icons.logout),
          ],
        ),
      ),
    );
  }
}
