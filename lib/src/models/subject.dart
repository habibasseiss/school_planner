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
    Subject(0, "Aplicativo Móveis", Professor.professors[0]),
    Subject(2, "Tópicos Especiais em TI", Professor.professors[1]),
    Subject(1, "Inteligência Artificial", Professor.professors[2]),
    Subject(3, "Estrutura de Dados 2", Professor.professors[2]),
  ];
}
