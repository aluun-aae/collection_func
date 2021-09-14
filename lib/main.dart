import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/student_summ.dart';
import 'package:flutter_application_1/screens/students_age.dart';
import 'package:flutter_application_1/screens/students_group.dart';
import 'package:flutter_application_1/screens/students_name.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  final List _children = [
    StudentName(),
    StudentAge(),
    StudentGroup(),
    StudentSumm()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(
              Icons.people_alt,
            ),
            label: "name",
          ),
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(
                Icons.group,
              ),
              label: "group "),
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(
                Icons.people_alt,
              ),
              label: "age"),
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(
                Icons.people_alt,
              ),
              label: "summ"),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
