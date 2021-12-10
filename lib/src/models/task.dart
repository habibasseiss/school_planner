import 'package:school_planner/src/models/subject.dart';

enum TaskType {
  test,
  homework,
  meeting,
}

class Task {
  Task(this.id, this.title, this.desc, this.date, this.done, this.type,
      this.subject);

  final int id;
  final String title;
  final String desc;
  final DateTime date;
  final bool done;
  final TaskType type;
  final Subject subject;

  // getter for sample data
  static List<Task> get tasks => _tasks;

  // fixed sample data
  static final List<Task> _tasks = [
    Task(1, "Reunião de Projeto", "Reunião", DateTime.utc(2021, 11, 20), false,
        TaskType.meeting, Subject.subjects[0]),
    Task(2, "Prova", "Prova de Inteligência Artificial",
        DateTime.utc(2021, 11, 15), false, TaskType.test, Subject.subjects[1]),
    Task(
        3,
        "Trabalho de Computação em Nuvem",
        "Trabalho de Computação em Nuvem",
        DateTime.utc(2021, 10, 15),
        false,
        TaskType.homework,
        Subject.subjects[2]),
    Task(4, "Prova de recuperação", "Prova de recuperação", DateTime.now(),
        false, TaskType.test, Subject.subjects[3]),
  ];
}
