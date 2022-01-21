import 'package:mahesh/rectangle.dart';
import 'dart:math';

class Bicycle {
  int cadence;
  int gear;
  int _speed = 0;
  int get speed => _speed;

  Bicycle(this.cadence, this.gear);

  @override
  String toString() => 'Bicycle: speed: $_speed mph';

  void applyBrake(int decrement) {
    _speed -= decrement;
  }

  void speedUp(int increment) {
    _speed += increment;
  }
}

abstract class Shape {
  factory Shape(String type) {
    if (type == 'circle') return Circle(2);
    if (type == 'square') return Square(2);
    throw 'Cannot create $type';
  }
  num get area;
}

Shape shapeFactory(String type) {
  if (type == 'circle') return Circle(2);
  if (type == 'square') return Square(2);
  throw 'cant create a type';
}

class Circle implements Shape {
  final num radius;
  Circle(this.radius);

  num get area => pi * pow(radius, 2);
}

class Square implements Shape {
  final num side;
  Square(this.side);

  num get area => pow(side, 2);
}

void main() {
  var bike = Bicycle(2, 1);

  print(bike);
  bike.speedUp(2);
  print(bike);
  bike.applyBrake(2);
  print(bike);
  var rect = Rectangle(length: 25, height: 90);
  print(rect);

  final circle = Circle(2);
  final square = Square(2);
  print(circle.area);
  print(square.area);

  final ccircle = Shape('circle');
  final ssquare = Shape('square');

  print(ccircle);
  print(ssquare);
}
