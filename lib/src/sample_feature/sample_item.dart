/// A placeholder class that represents an entity or model.
class SampleItem {
  SampleItem(this.id, this.title);

  final int id;
  final String title;

  // getter for sample data
  static List<SampleItem> get items => _items;

  // fixed sample data
  static final List<SampleItem> _items = [
    SampleItem(1, "Joao"),
    SampleItem(2, "Maria"),
    SampleItem(3, "Jose"),
  ];
}
