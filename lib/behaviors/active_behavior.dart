import 'behavior.dart';

class ActiveBehavior implements Behavior {
  @override
  void act(String name, String species) {
    print('$name the $species is very active and moving around!');
  }
}
