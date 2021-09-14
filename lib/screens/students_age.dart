import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/students_model.dart';

class StudentAge extends StatefulWidget {
  StudentAge({Key? key}) : super(key: key);

  @override
  _StudentAgeState createState() => _StudentAgeState();
}

class _StudentAgeState extends State<StudentAge> {
  var list = StudentData().studData.where((e) => e.age > 20).toList();
  var year = DateTime.now().year;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: list.length,
      itemBuilder: (BuildContext context, int index) {
        var a1 = year - list[index].age;
        return ListTile(
          title: Text(a1.toString()),
        );
      },
    );
  }
}
