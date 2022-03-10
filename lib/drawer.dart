// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:custompageuse/page1.dart';
import 'package:custompageuse/page2.dart';
import 'package:custompageuse/page3.dart';

class Draweruse extends StatefulWidget {
  const Draweruse({Key? key}) : super(key: key);

  @override
  State<Draweruse> createState() => _DraweruseState();
}

class _DraweruseState extends State<Draweruse> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Eyüp Ensar Almaz"),
            accountEmail: Text("eyupensar.almaz@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("images/linkdin.png"),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
            ),
            title: Text("Home"),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => Mainpage(),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => SecondPage(),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.contacts),
            title: Text("Contact Us"),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => ThirdPage(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
