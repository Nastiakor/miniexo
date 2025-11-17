import 'animal.dart';

class Fish extends Animal {
  Fish({required super.name}) : super(species: "Fish");

  @override
  void makeSound() {
    print('$name the Fish says: Blub!');
    changeEnergy(-2);
  }

  void swim() {
    print('$name swims swiftly.');
    changeEnergy(-5);
  }
}
