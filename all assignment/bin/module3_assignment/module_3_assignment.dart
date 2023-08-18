import 'class.dart';
void main() {
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
