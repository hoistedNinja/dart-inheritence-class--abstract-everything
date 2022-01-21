class Rectangle {
  int length;
  int breadth;
  int height;

// length, breadth and height here are optional named parameters
// Named parameters are enclosed in curly braces {}
  Rectangle({this.length = 10, this.breadth = 0, this.height = 0});

  @override
  String toString() =>
      'length is $length , breadth is : $breadth and height: $height';
}
