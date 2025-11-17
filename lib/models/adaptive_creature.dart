import '../behaviors/active_behavior.dart';
import '../behaviors/behavior.dart';
import '../behaviors/hiding_behavior.dart';
import '../behaviors/sleeping_behavior.dart';
import '../weather/weather_observer.dart';

class AdaptiveCreature implements WeatherObserver {
  final String name;
  final String species;

  Behavior _behavior = ActiveBehavior();

  AdaptiveCreature({required this.name, required this.species});

  void performAction() {
    _behavior.act(name, species);
  }

  @override
  void onWeatherChange(String weather) {
    switch (weather) {
      case "sunny":
        _behavior = ActiveBehavior();
        break;
      case "rainy":
        _behavior = SleepingBehavior();
        break;
      case "stormy":
        _behavior = HidingBehavior();
        break;
      default:
        print("Unknown weather: $weather");
    }

    print('$name the $species changed behavior because of $weather.');
  }
}
