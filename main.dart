class Dog {
  // Properties
  String breed;
  String color;

  // Constructor
  Dog(this.breed, this.color);

  // Methods
  void bark() {
    print('Woof!');
  }

  void run() {
    print('The dog is running.');
  }
}

void main() {
  // Creating an instance of the Dog class
  var myDog = Dog('Labrador', 'Golden');

  // Accessing properties
  print('Breed: ${myDog.breed}');
  print('Color: ${myDog.color}');

  // Calling methods
  myDog.bark();
  myDog.run();
}
