import 'Person.dart';

class Student extends Person {
  int _attend=0;
  String faculty;

  Student({
    required super.name,
    required super.age,
    super.email,
    super.phone,
    super.address,
   required this.faculty,
  });
  @override
  void info() {
    // TODO: implement info
    print(
        "$name is a student ,he/she is $age years old\n,he/she from ${address??'no information'} ,his/here phone is ${phone??'no information'}\n,he/she studies at faculty of $faculty and he/she attended $attend sessions\n"
    );
  }
  int get attend=>_attend;
  void attended(){
    _attend++;
  }
}
