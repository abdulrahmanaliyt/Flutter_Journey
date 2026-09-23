// Imagine you have different types of animals. Not all mammals can fly, and not all birds can swim. Instead of creating a complex inheritance tree, you can create modular behaviors using mixins:

// Define Mixins
mixin Flyable {
  void fly() {
    print("Flying high in the sky!");
  }
}

mixin Swimmable {
  void swim() {
    print("Swimming in the water!");
  }
}

// Base Class
abstract class Animal {
  String name;
  Animal(this.name);
}

// Classes using Mixins with 'with'
class Duck extends Animal with Flyable, Swimmable {
  Duck(String name) : super(name);
}

class Airplane with Flyable {
  // Airplane is not an Animal, but it can fly!
}

class Fish extends Animal with Swimmable {
  Fish(String name) : super(name);
}

void main() {
  Duck duck = Duck("Donald");
  print(duck.name);
  duck.fly();
  duck.swim();

  Airplane plane = Airplane();
  plane.fly(); // Output: Flying high in the sky!
}



// You can use the on keyword to restrict a mixin so that it can only be applied to classes that extend or implement a specific superclass.

abstract class Performer {
  void perform();
}

// This 1 can ONLY be used on classes that extend/implement Performer
mixin Musical on Performer {
  void playInstrument() {
    print("Playing a musical instrument...");
  }
}

// Works fine because Musician extends Performer
class Musician extends Performer with Musical {
  @override
  void perform() {
    print("Performing on stage!");
  }
}

// ERROR: Car does not extend Performer!
// class Car with Musical {}
