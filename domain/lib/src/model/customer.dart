class Customer {
  Customer({
    this.description,
    required this.email,
    this.id,
    required this.name,
    required this.phone,
  });

  final String? description;
  final String email;
  final String? id;
  final String name;
  final String phone;
}
