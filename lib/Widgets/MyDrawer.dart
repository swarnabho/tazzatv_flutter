import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xFF05265E),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("assets/images/tazzatv_logo.png"),
            ),
            accountName: Text(
              "Abir Chanda",
              style: TextStyle(color: Colors.white),
            ),
            accountEmail: Text(
              "abirchanda009@gmail.com",
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
