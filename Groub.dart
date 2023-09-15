import 'Instructor.dart';
import 'package:section1/tasks/Student2.dart';

class Groub {
  Instructor instructor;
  List<Student> students;
  String date;
  String name;
  Groub({
    required this.name,
    required this.date,
    required this.instructor,
    required this.students,
  });

  @override
  void info() {
    print(
        "Group $name has Coach ${instructor.name}, which includes ${students.length} students, and its date is $date");
  }

  void addNewStudent(Student student) {
    students.add(student);
  }

  void deleteStudent(Student student) {
    if (students.isEmpty) {
      print('the list of students is empty');
      return;
    }
    if (students.contains(student)) {
      students.remove(student);
      print("${student.name} has been successfully deleted");
    } else {
      print("${student.name} not exist !");
    }
  }

  void showStudentsName() {
    for(int i=0;i<students.length;i++){
      print('student ${i+1} is: ${students[i].name}');
    }
  }
}
