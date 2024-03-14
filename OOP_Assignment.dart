abstract class Human {
  void introduce();
}

class Person implements Human {
  String name;
  int age;

  Person(this.name, this.age);

  @override
  void introduce() {
    print('Hello, my name is $name and I am $age years old.');
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
  File file = File('person_data.txt');
  try {
    List<String> lines = file.readAsLinesSync();
    if (lines.length < 3) {
      throw FormatException('Insufficient data in the file');
    }

    Employee employee = Employee(lines[0], int.tryParse(lines[1]) ?? 0, lines[2]);
    employee.introduce();

    for (int i = 0; i < 3; i++) {
      print('Iteration $i');
    }
  } on FormatException catch (e) {
    print('Error: ${e.message}');
  } on FileSystemException catch (e) {
    print('Error: File not found or could not be read');
  } catch (e) {
    print('Error: $e');
  }
}
