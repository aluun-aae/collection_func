import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/students_model.dart';

class StudentName extends StatefulWidget {
  const StudentName({Key? key}) : super(key: key);

  @override
  _StudentNameState createState() => _StudentNameState();
}

class _StudentNameState extends State<StudentName> {
  final data = StudentData();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: data.studData.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text(data.studData[index].fullname.toString()),
        );
      },
    );
  }
}
