import 'package:section1/tasks/Groub.dart';
import 'package:section1/tasks/Instructor.dart';
import 'package:section1/tasks/Student2.dart';

void main(){
  Student s1=Student(name: "Rehab", age: 21, faculty: 'Computers and Artificial Intelligence');
  Student s2=Student(name: 'faygys', age: 18, faculty: 'Medicine',phone: '02448',email: 'f@gmail.com',address: 'giza');
  Instructor instructor=Instructor(name: "juba", age: 30);
  Groub groub1=Groub(name: 'flutter', date: '15/9/2023', instructor: instructor, students: [s1,s2]);

  print("\n--- Student Info ---");
  s1.info();
  s2.info();

  print("\n--- Instructor Info ---");
  instructor.info();

  print("\n--- Group Info ---");
  groub1.info();

  //--- Attendance ---
  s1.attended();
  s1.attended();
  s2.attended();

  print("\n--- Updated Student Info ---");
  s1.info();
  s2.info();

  print("\n--- Lessons ---");
  instructor.addLesson('Introduction in dart');
  instructor.showLessons();

  print("\n--- Group Update ---");
  groub1.deleteStudent(s1);

  Student s3=Student(name: "nada", age: 21, faculty: "faculty");
  Student s4=Student(name: "hady", age: 20, faculty: 'faculty');

  groub1.addNewStudent(s3);
  groub1.addNewStudent(s4);

  print("\n--- Updated Group Students ---");
  groub1.showStudentsName();
}
