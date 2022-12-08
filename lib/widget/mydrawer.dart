import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class myDrawer extends StatelessWidget {
  final myImage = "../lib/Image/Ammad.jpg";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.deepPurpleAccent,
      child: Container(
        color: Theme.of(context).primaryColor,
        child: ListView(
          padding: EdgeInsets.all(0),
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.all(0),
                  accountName: Text("S M Ammad Ali"),
                  accountEmail: Text("smammadali05@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage(myImage),
                  )),
            ),
            ListTile(
              leading: const Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: const Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(
                  letterSpacing: 4,
                  color: Colors.white,
                ),
              ),
              onTap: () {},
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Email me",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
