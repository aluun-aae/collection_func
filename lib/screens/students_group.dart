import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/students_model.dart';

class StudentGroup extends StatefulWidget {
  StudentGroup({Key? key}) : super(key: key);

  @override
  _StudentGroupState createState() => _StudentGroupState();
}

class _StudentGroupState extends State<StudentGroup> {
  var list =
      StudentData().studData.where((e) => e.gruop == "IVT-1-08").toList();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: list.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text(
              "${list[index].fullname.toString()}" + " ${list[index].age} лет"),
        );
      },
    );
  }

  myFilter(f) => f('IVT-1-08');
}
