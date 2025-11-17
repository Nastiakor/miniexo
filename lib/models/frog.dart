import 'animal.dart';

class Frog extends Animal {
  Frog({required super.name}) : super(species: "Frog");

  @override
  void makeSound() {
    print('$name the Frog says: Ribbit!');
    changeEnergy(-5);
  }

  void jump() {
    print('$name jumps high!');
    changeEnergy(-10);
  }
}
