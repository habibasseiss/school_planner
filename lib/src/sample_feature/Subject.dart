import 'Professor.dart';

class Subject {
  Subject(
    this.id,
    this.title,
    //this.professor,
  );

  final int id;
  final String title;
  //final Professor professor;

  static List<Subject> get subjects => _subjects;

  // fixed sample data
  static final List<Subject> _subjects = [
    Subject(1, "Geografia"),
    Subject(2, "História"),
  ];
}
