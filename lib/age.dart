import 'dart:io';

class AgeCalculater {
  static int age;

  //constructor to calc age
  AgeCalculater(int p) {
    int birthYear = p;
    age = DateTime.now().year - birthYear;
  }
}
