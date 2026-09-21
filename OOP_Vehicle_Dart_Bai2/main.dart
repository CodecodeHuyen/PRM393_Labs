class Vehicle {
  String brand;
  int year;

  Vehicle(this.brand, this.year);

  void startEngine() {
    print('Khoi dong phuong tien...');
  }
}

class Car extends Vehicle {
  bool isElectric;

  Car(String brand, int year, this.isElectric) : super(brand, year);

  Car.tesla(int year)
      : isElectric = true,
        super('Tesla', year);

  @override
  void startEngine() {
    if (isElectric) {
      print('$brand $year khoi dong bang dong co dien rat em ai.');
    } else {
      print('$brand $year khoi dong dong co xang: Brum brum!');
    }
  }
}

void main() {
  Car normalCar = Car('Toyota', 2023, false);
  normalCar.startEngine();

  Car teslaCar = Car.tesla(2024);
  teslaCar.startEngine();
}
