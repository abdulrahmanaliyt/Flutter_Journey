class Vehicle {
  void move() {
    print("Vehicle is moving");
  }
}

class Car extends Vehicle {
  void drift() {
    print("Car is Drifting");
  }
}

void main() {
  Vehicle v1 = Vehicle();
  v1.move();
  Car car = Car();
  car.move();
  car.drift();
}
