abstract class Person {
  final String name;
  final int age;
  final String? address;
  final String? phone;
  final String? email;
  Person({
    required this.name,
    required this.age,
    this.email,
    this.phone,
    this.address,
  });
  void info();
}
