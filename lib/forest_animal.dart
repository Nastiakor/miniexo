class ForestAnimal {
  int _energy = 100;

  final String name;
  final String species;

  ForestAnimal({required this.name, required this.species});

  void gatherWood() {
    print('$name the $species is gathering wood. Energy -15.');
    _energy = (_energy - 15).clamp(0, 100);
  }

  void standGuard() {
    print('$name the $species is standing guard. Energy -10.');
    _energy = (_energy - 10).clamp(0, 100);
  }

  void restInDen() {
    print('$name the $species rests in the den. Energy +25.');
    _energy = (_energy + 25).clamp(0, 100);
  }

  int getEnergy() => _energy;

  @override
  String toString() => '$name ($species) – Energy: ${getEnergy()}';
}
