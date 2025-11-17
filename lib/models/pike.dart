import '../abilities/predator.dart';
import '../abilities/swimmer.dart';
import 'animal.dart';

class Pike extends Animal implements Swimmer, Predator {
  Pike({required super.name}) : super(species: "Pike");

  @override
  void makeSound() {
    print("$name the Pike makes… fish noises? Glub.");
  }

  @override
  void swim() {
    print("$name swims fast in the lake.");
    changeEnergy(-4);
  }

  @override
  void hunt(Animal prey) {
    print("$name the Pike is hunting ${prey.name}!");
    changeEnergy(-15);
  }
}
