abstract class Shape {
  String? id;
  String? type;

  void draw();
}

class Circle extends Shape {
  Circle() {
    type = "Circle";
  }

  @override
  void draw() {
    print("Draw Circle.Shape");
  }
}

class Rectangle extends Shape {
  Rectangle() {
    type = "Rectangle";
  }

  @override
  void draw() {
    print("Draw Rectangle.Shape");
  }
}

class Square extends Shape {
  Square() {
    type = "Square";
  }

  @override
  void draw() {
    print("Draw Square.Shape");
  }
}

class ShapeCache {
  Map<String, Shape> _shapeMap = Map<String, Shape>();

  Shape? getShape(String id) {
    return _shapeMap[id];
  }

  void setShape(Shape shape) {
    if (shape.id != null) {
      _shapeMap[shape.id!] = shape;
    }
  }
}

void main(List<String> args) {
  ShapeCache shapeCache = ShapeCache();

  // store shapes
  final circle = Circle();
  circle.id = "1";
  shapeCache.setShape(circle);

  final square = Square();
  square.id = "2";
  shapeCache.setShape(square);

  final rectangle = Rectangle();
  rectangle.id = "3";
  shapeCache.setShape(rectangle);

  // get shapes
  final shape1 = shapeCache.getShape("1");
  shape1?.draw();

  final shape2 = shapeCache.getShape("2");
  shape2?.draw();

  final shape3 = shapeCache.getShape("3");
  shape3?.draw();
}
