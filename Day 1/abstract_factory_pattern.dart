// shape types
enum ShapeType {
  circle,
  rectangle,
  roundedRactangle,
  roundedSquare,
}

// factory type
enum FactoryType {
  normalShape,
  roundedShape,
}

abstract class Shape {
  void draw();
}

class Circle implements Shape {
  @override
  void draw() {
    print("Inside Circle.draw() method");
  }
}

class Rectangle implements Shape {
  @override
  void draw() {
    print("Inside Rectangle.draw() method");
  }
}

class RoundedRectangle implements Shape {
  @override
  void draw() {
    print("Inside RoundedRectangle.draw() method");
  }
}

class RoundedSquare implements Shape {
  @override
  void draw() {
    print("Inside RoundedSquare.draw() method");
  }
}

// abstract factory
abstract class AbstractFactory {
  Shape? getShape(ShapeType shapeType);
}

class ShapeFactory implements AbstractFactory {
  @override
  Shape? getShape(ShapeType shapeType) {
    switch (shapeType) {
      case ShapeType.circle:
        return Circle();
      case ShapeType.rectangle:
        return Rectangle();
      default:
        return null;
    }
  }
}

class RoundedShapeFactory implements AbstractFactory {
  @override
  Shape? getShape(ShapeType shapeType) {
    switch (shapeType) {
      case ShapeType.roundedRactangle:
        return RoundedRectangle();
      case ShapeType.roundedSquare:
        return RoundedSquare();
      default:
        return null;
    }
  }
}

class FactoryProducer {
  AbstractFactory getFactory(FactoryType factoryType) {
    switch (factoryType) {
      case FactoryType.normalShape:
        return ShapeFactory();
      case FactoryType.roundedShape:
        return RoundedShapeFactory();
    }
  }
}

void main(List<String> args) {
  FactoryProducer factoryProducer = FactoryProducer();

  // normal shapes factory
  AbstractFactory normalShapeFactory = factoryProducer.getFactory(
    FactoryType.normalShape,
  );

  Shape? circle = normalShapeFactory.getShape(ShapeType.circle);
  circle?.draw();

  Shape? rectangle = normalShapeFactory.getShape(ShapeType.rectangle);
  rectangle?.draw();

  // rounded shapes factory
  AbstractFactory roundedShapeFactory = factoryProducer.getFactory(
    FactoryType.roundedShape,
  );

  Shape? roundedRactangle = roundedShapeFactory.getShape(
    ShapeType.roundedRactangle,
  );
  roundedRactangle?.draw();

  Shape? roundedSquare = roundedShapeFactory.getShape(ShapeType.roundedSquare);
  roundedSquare?.draw();
}
