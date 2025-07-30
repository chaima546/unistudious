class Academy {
  final String id;
  final String name;
  final int courseCount;
  final String? imageUrl;

  Academy({
    required this.id,
    required this.name,
    required this.courseCount,
    this.imageUrl,
  });
}