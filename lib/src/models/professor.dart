class Professor {
  Professor(this.id, this.name);

  final int id;
  final String name;

  static List<Professor> get professors => _professors;

  // fixed sample data
  static final List<Professor> _professors = [
    Professor(0, "George"),
    Professor(1, "Ricardo"),
    Professor(2, "Habib")
  ];
}
