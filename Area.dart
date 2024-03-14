class Area {
  // Properties
  double length;
  double width;

  // Constructor
  Area(this.length, this.width);

  // Method to calculate area
  double calculateArea() {
    return length * width;
  }
}

void main() {
  // Creating an instance of the Area class
  var rectangle = Area(5.0, 3.0);

  // Calculating and printing the area
  print('Area of the rectangle: ${rectangle.calculateArea()} square units');
}
