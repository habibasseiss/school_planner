// import 'subject.dart';

enum TaskType {
  test,
  homework,
  meeting,
}

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
  final TaskType type;
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
      TaskType.test,
    ),
    Task(1, "Trabalho", "Trabalho de História", DateTime.utc(2021, 11, 15),
        false, TaskType.homework),
  ];
}
