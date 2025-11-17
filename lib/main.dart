import 'package:poo_exercises/utils/swim_utils.dart';
import 'package:poo_exercises/weather/weather.dart';
import 'models/adaptive_creature.dart';
import 'models/animal.dart';
import 'models/dragonfly.dart';
import 'models/duck.dart';
import 'models/fish.dart';
import 'models/frog.dart';
import 'models/mosquito.dart';
import 'models/pike.dart';
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

  print("Specific actions");
  (animals[0] as Frog).jump();
  (animals[1] as Fish).swim();
  (animals[2] as Dragonfly).fly();
  (animals[3] as Mosquito).bite();
  (animals[4] as Snail).crawl();

  print("Final energies");
  for (var animal in animals) {
    print(animal);
  }

  final duck = Duck(name: "Daisy");
  final pike = Pike(name: "Predo");

  print("Duck Actions");
  duck.makeSound();
  duck.swim();
  duck.fly();
  print(duck);

  print("Pike Actions");
  makeSwim(pike);
  pike.makeSound();

  print("Predator Test");
  pike.hunt(duck);
  print(pike);

  print("Duck After Being Hunted");
  print(duck);

  final weather = Weather();

  final fox = AdaptiveCreature(name: "Fiona", species: "Fox");
  final owl = AdaptiveCreature(name: "Oscar", species: "Owl");

  weather.addObserver(fox);
  weather.addObserver(owl);

  fox.performAction();
  owl.performAction();

  weather.setWeather("rainy");
  fox.performAction();
  owl.performAction();

  weather.setWeather("stormy");
  fox.performAction();
  owl.performAction();

  weather.setWeather("sunny");
  fox.performAction();
  owl.performAction();
}
