import 'Person.dart';

class Instructor extends Person {
  final List<String> lessons;

  Instructor({
    required String name,
    required int age,
    String? email,
    String? phone,
    String? address,
    List<String>? lessons,
  })  : lessons = lessons ?? [],
        super(
          name: name,
          age: age,
          email: email,
          phone: phone,
          address: address,
        );

  void addLesson(String lesson) {
    lessons.add(lesson);
  }

  void showLessons() {
    for (int i = 0; i < lessons.length; i++) {
      print("lesson ${i+1}: ${lessons[i]}");
    }
  }

  @override
  void info() {
    print(
        "$name is an instructor, he is $age years old, he is from ${address??'no information'} and his email is ${email??'no information'}");
  }
}
