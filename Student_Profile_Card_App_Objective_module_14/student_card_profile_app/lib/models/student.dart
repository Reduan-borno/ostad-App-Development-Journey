
class Student {
  final String name;
  final String id;
  final String department;
  final String? imageUrl; 

  const Student({
    required this.name,
    required this.id,
    required this.department,
    this.imageUrl,
  });
}
