// items interface
abstract class Item {
  String name();
  Packing packing();
  num price();
}

// packing interface
abstract class Packing {
  String pack();
}

// differnt packing of our items
class Wrapper implements Packing {
  @override
  String pack() {
    return "Wrapper";
  }
}

class Bottle implements Packing {
  @override
  String pack() {
    return "Bottle";
  }
}

// different items
abstract class Burger implements Item {
  @override
  String name();

  @override
  Packing packing() {
    return Wrapper();
  }

  @override
  num price();
}

abstract class ColdDrink implements Item {
  @override
  String name();

  @override
  Packing packing() {
    return Bottle();
  }

  @override
  num price();
}

// concrete classes which represent the items we will pack and order
class VegBurger extends Burger {
  @override
  String name() {
    return "Veg Burger";
  }

  @override
  num price() {
    return 100;
  }
}

class ChickenBurger extends Burger {
  @override
  String name() {
    return "Chicken Burger";
  }

  @override
  num price() {
    return 80;
  }
}

class Coke extends ColdDrink {
  @override
  String name() {
    return "Coke";
  }

  @override
  num price() {
    return 15;
  }
}

class Pepsi extends ColdDrink {
  @override
  String name() {
    return "Pepsi";
  }

  @override
  num price() {
    return 12;
  }
}

class Meal {
  List<Item> items = [];

  void addItem(Item item) {
    items.add(item);
  }

  num totalCost() {
    num cost = 0;

    for (var item in items) {
      cost += item.price();
    }
    return cost;
  }

  void showItems() {
    for (var item in items) {
      print(
        "Item : ${item.name()}, Packing : ${item.packing().pack()}, Price : ${item.price()}",
      );
    }
  }
}

void main(List<String> args) {
  Meal meal = Meal();

  meal.addItem(VegBurger());
  meal.addItem(ChickenBurger());
  meal.addItem(Pepsi());

  print("Total Cost ${meal.totalCost()}");
  meal.showItems();
}
