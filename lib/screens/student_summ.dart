import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/students_model.dart';

class StudentSumm extends StatefulWidget {
  const StudentSumm({Key? key}) : super(key: key);

  @override
  _StudentSummState createState() => _StudentSummState();
}

class _StudentSummState extends State<StudentSumm> {
  var list = StudentData()
      .studData
      .where((e) => e.gruop == "IVT-1-08")
      .toList()
      .map((e) => e.moneyInTheBank)
      .reduce((value, element) => value + element);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(list.toString()),
    );
  }
}
