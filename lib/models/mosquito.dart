import 'animal.dart';

class Mosquito extends Animal {
  Mosquito({required super.name}) : super(species: "Mosquito");

  @override
  void makeSound() {
    print('$name the Mosquito goes: Bzzz!');
    changeEnergy(-1);
  }

  void bite() {
    print('$name bites! Ouch!');
    changeEnergy(-5);
  }
}
