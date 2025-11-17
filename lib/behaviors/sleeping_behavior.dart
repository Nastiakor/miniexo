import 'behavior.dart';

class SleepingBehavior implements Behavior {
  @override
  void act(String name, String species) {
    print('$name the $species is sleeping peacefully.');
  }
}
