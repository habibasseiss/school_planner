import 'package:school_planner/src/sample_feature/Subject.dart';

enum Type { Prova, Trabalho, Atividade }

class Task {
  Task(
    this.id,
    this.title,
    this.desc,
    this.date,
    this.done,
    this.type,
    //this.subject
  );

  final int id;
  final String title;
  final String desc;
  final DateTime date;
  final bool done;
  final Type type;
  //final Subject subject;

  // getter for sample data
  static List<Task> get tasks => _tasks;

  // fixed sample data
  static final List<Task> _tasks = [
    Task(
      1,
      "Prova",
      "Prova de Geografia",
      DateTime.utc(2021, 11, 20),
      false,
      Type.Prova,
    ),
    Task(1, "Trabalho", "Trabalho de História", DateTime.utc(2021, 11, 15),
        false, Type.Trabalho),
  ];
}
