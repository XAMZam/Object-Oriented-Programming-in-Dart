
    import 'dart:io';

abstract class Human {
  void introduce();
}

class Person implements Human {
  String name;
  int age;

  Person(this.name, this.age);

  @override
  void introduce() {
    print(
        'Hello, my name is $name, I am $age years old, and I am from person_data.txt.');
  }
}

class Employee extends Person {
  String position;

  Employee(String name, int age, this.position) : super(name, age);

  @override
  void introduce() {
    super.introduce();
    print('I work as a $position.');
  }
}

void main() {
  try {
    var file = File('person_data.txt');
    var lines = file.readAsLinesSync();

    if (lines.length < 3) {
      throw 'Insufficient data in the file';
    }

    var employee = Employee(lines[0], int.parse(lines[1]), lines[2]);
    employee.introduce();

    for (int i = 0; i < 3; i++) {
      print('Iteration $i');
    }
  } catch (e) {
    print('Error: $e');
  }
}
