class Spell {
  final String id;
  final String name;
  final String description;
  bool isExpanded;

  Spell({required this.id, required this.name, required this.description, this.isExpanded = false});
}
