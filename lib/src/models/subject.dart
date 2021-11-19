// import 'professor.dart';

import 'package:school_planner/src/models/professor.dart';

class Subject {
  Subject(
    this.id,
    this.title,
    this.professor,
  );

  final int id;
  final String title;
  final Professor professor;

  static List<Subject> get subjects => _subjects;

  // fixed sample data
  static final List<Subject> _subjects = [
    Subject(1, "Geografia", Professor.professors[0]),
    Subject(2, "História", Professor.professors[1]),
  ];
}
