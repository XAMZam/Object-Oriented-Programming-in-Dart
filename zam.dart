class Person {
  // Properties
  String name;
  String phone;
  bool isMarried;
  String country;
  int age;

  // Constructor
  Person(this.name, this.phone, this.isMarried, this.country, this.age);

  // Method to display information
  void displayInfo() {
    print('Name: $name');
    print('Phone: $phone');
    print('Marital Status: ${isMarried ? 'Married' : 'Single'}');
    print('Country: $country');
    print('Age: $age');
  }
}

void main() {
  // Creating an instance of the Person class
  var person = Person('Zamzam Ali Hedar', '+1234567890', false, 'Kenya', 25);

  // Calling the displayInfo method to print information
  person.displayInfo();
}
