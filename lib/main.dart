import 'models/animal.dart';
import 'models/dragonfly.dart';
import 'models/fish.dart';
import 'models/frog.dart';
import 'models/mosquito.dart';
import 'models/snail.dart';

void main() {
  final animals = <Animal>[
    Frog(name: "Freddy"),
    Fish(name: "Nemo"),
    Dragonfly(name: "Daisy"),
    Mosquito(name: "Buzz"),
    Snail(name: "Shelly"),
  ];

  print("Animals make their sounds");
  for (var animal in animals) {
    animal.makeSound();
  }

  print("\n=== Specific actions ===");
  (animals[0] as Frog).jump();
  (animals[1] as Fish).swim();
  (animals[2] as Dragonfly).fly();
  (animals[3] as Mosquito).bite();
  (animals[4] as Snail).crawl();

  print("\n=== Final energies ===");
  for (var animal in animals) {
    print(animal); // toString() automatique
  }
}
