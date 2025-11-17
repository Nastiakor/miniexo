import 'forest_animal.dart';

void main() {
  final fox = ForestAnimal(name: "Fiona", species: "Fox");
  final owl = ForestAnimal(name: "Oscar", species: "Owl");
  final beaver = ForestAnimal(name: "Benny", species: "Beaver");

  // Some actions
  fox.gatherWood();
  owl.standGuard();
  beaver.restInDen();

  fox.standGuard();
  owl.gatherWood();
  beaver.gatherWood();

  // Print final energy
  print(fox);
  print(owl);
  print(beaver);
}
