enum ShapeType {
  circle,
  rectangle,
  square,
}

abstract class Shape {
  void draw();
}

class Circle implements Shape {
  @override
  void draw() {
    print("Inside Circle.draw() method.");
  }
}

class Rectangle implements Shape {
  @override
  void draw() {
    print("Inside Rectangle.draw() method.");
  }
}

class Square implements Shape {
  @override
  void draw() {
    print("Inside Square.draw() method.");
  }
}

// factory class
class ShapeFactory {
  Shape? getShape(ShapeType shapeType) {
    switch (shapeType) {
      case ShapeType.circle:
        return Circle();
      case ShapeType.rectangle:
        return Rectangle();
      case ShapeType.square:
        return Square();
      default:
        return null;
    }
  }
}

void main(List<String> args) {
  ShapeFactory factory = ShapeFactory();

  // create circle shape
  Shape? circle = factory.getShape(ShapeType.circle);
  circle?.draw();

  // create rectangle shape
  Shape? rectangle = factory.getShape(ShapeType.rectangle);
  rectangle?.draw();

  // create square shape
  Shape? square = factory.getShape(ShapeType.square);
  square?.draw();
}
