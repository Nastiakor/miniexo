import 'animal.dart';

class Dragonfly extends Animal {
  Dragonfly({required super.name}) : super(species: "Dragonfly");

  @override
  void makeSound() {
    print('$name the Dragonfly buzzes!');
    changeEnergy(-3);
  }

  void fly() {
    print('$name flies gracefully.');
    changeEnergy(-8);
  }
}
