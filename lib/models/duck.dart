import '../abilities/flyer.dart';
import '../abilities/swimmer.dart';
import 'animal.dart';

class Duck extends Animal implements Swimmer, Flyer {
  Duck({required super.name}) : super(species: "Duck");

  @override
  void makeSound() {
    print("$name the Duck says: Quack!");
    changeEnergy(-5);
  }

  @override
  void swim() {
    print("$name swims peacefully.");
    changeEnergy(-3);
  }

  @override
  void fly() {
    print("$name flaps its wings and flies!");
    changeEnergy(-10);
  }
}
