import 'animal.dart';

class Snail extends Animal {
  Snail({required super.name}) : super(species: "Snail");

  @override
  void makeSound() {
    print('$name the Snail says: Hello');
    changeEnergy(-1);
  }

  void crawl() {
    print('$name crawls slowly.');
    changeEnergy(-2);
  }
}
