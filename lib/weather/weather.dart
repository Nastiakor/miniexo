import 'package:poo_exercises/weather/weather_observer.dart';

class Weather {
  final List<WeatherObserver> _observers = [];
  String _current = "sunny";

  String get current => _current;

  void addObserver(WeatherObserver observer) {
    _observers.add(observer);
  }

  void removeObserver(WeatherObserver observer) {
    _observers.remove(observer);
  }

  void setWeather(String newWeather) {
    _current = newWeather;
    print('Weather changed to $newWeather');

    for (final obs in _observers) {
      obs.onWeatherChange(newWeather);
    }
  }
}
