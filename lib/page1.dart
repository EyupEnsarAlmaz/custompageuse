import 'package:custompageuse/drawer.dart';
import 'package:flutter/material.dart';
import 'package:custompageuse/main.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({Key? key}) : super(key: key);

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Main Page"),
      ),
    );
  }
}
