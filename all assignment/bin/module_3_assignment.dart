class Car {
  String brand;
  String model;
  int year;
  double milesDriven =0.0;

  Car(this.brand, this.model, this.year);

  void drive(double miles) {
    milesDriven += miles;
  }

  double getMilesDriven() {
    return milesDriven;
  }

  String getBrand() {
    return brand;
  }

  String getModel() {
    return model;
  }

  int getYear() {
    return year;
  }

  int getAge() {
    return DateTime.now().year - year;
  }

  static int numberOfCars = 0;
}

void main() {
  Car.numberOfCars = 0;

  Car car1 = Car('Toyota', 'Camry', 2020);
  car1.drive(10000);

  Car car2 = Car('Honda', 'Civic', 2018);
  car2.drive(8000);

  Car car3 = Car('Ford', 'F-150', 2015);
  car3.drive(15000);

  List<Car> cars = [car1, car2, car3];

  for (var i = 0; i < cars.length; i++) {
    print('Car ${i + 1}: ${cars[i].getBrand()}'
        ' ${cars[i].getModel()} ${cars[i].getYear()}'
        ' Miles: ${cars[i].getMilesDriven().toInt()}'
        ' Age: ${cars[i].getAge()}');
  }

  print('Total number of cars created: ${Car.numberOfCars}');
}
