abstract class Animal {
  int _energy = 100;

  final String name;
  final String species;

  Animal({required this.name, required this.species});

  void changeEnergy(int amount) {
    _energy = (_energy + amount).clamp(0, 100);
  }

  int getEnergy() => _energy;

  void makeSound();

  @override
  String toString() => '$name ($species) – Energy: ${getEnergy()}';
}
