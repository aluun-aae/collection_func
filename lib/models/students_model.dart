import 'dart:math';

class StudentsModel {
  String? fullname;
  String? gruop;
  int? age;
  double? moneyInTheBank;
  StudentsModel({this.fullname, this.gruop, this.age, this.moneyInTheBank});
}

class StudentData {
  final List studData = List<StudentsModel>.generate(
      100,
      (i) => StudentsModel(
          age: Random().nextInt(50) + min(20, 50),
          fullname: Random().nextInt(100) < 50 ? "Tom T" : "Ron R",
          gruop: Random().nextInt(80) < 20 ? "IVT-1-08" : "IVT-1-01",
          moneyInTheBank: Random().nextInt(10000).toDouble()));
}
