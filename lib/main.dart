import 'package:custompageuse/drawer.dart';
import 'package:custompageuse/page1.dart';
import 'package:custompageuse/page2.dart';
import 'package:custompageuse/page3.dart';
import 'package:flutter/material.dart';

// ignore_for_file: prefer_const_constructors, avoid_types_as_parameter_names, non_constant_identifier_names, prefer_const_literals_to_create_immutables, unnecessary_new, sized_box_for_whitespace
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Custom Page',
      theme: ThemeData(),
      home: MyhomePage(),
    );
  }
}

class MyhomePage extends StatefulWidget {
  MyhomePage({Key? key}) : super(key: key);

  @override
  State<MyhomePage> createState() => _MyhomePageState();
}

class _MyhomePageState extends State<MyhomePage> {
  int secilenmenuItem = 0;
  late List<Widget> allPage;
  Mainpage? page1;
  SecondPage? page2;
  ThirdPage? page3;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    page1 = Mainpage();
    page2 = SecondPage();
    page3 = ThirdPage();
    allPage = [page1!, page2!, page3!];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Draweruse(),
      appBar: AppBar(
        title: Text("Custom Page"),
      ),
      body: allPage[secilenmenuItem],
      bottomNavigationBar: bottom(),
    );
  }

  Theme bottom() {
    return Theme(
      data: ThemeData(canvasColor: Colors.blue),
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "Settings",
            icon: Icon(Icons.settings),
          ),
          BottomNavigationBarItem(
            label: "Contacts Us",
            icon: Icon(Icons.contacts),
          ),
        ],
        currentIndex: secilenmenuItem,
        onTap: onitemtapped,
        selectedItemColor: Colors.white,
      ),
    );
  }

  void onitemtapped(int index) {
    setState(() {
      secilenmenuItem = index;
    });
  }
}
