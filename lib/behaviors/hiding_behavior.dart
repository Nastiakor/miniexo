import 'behavior.dart';

class HidingBehavior implements Behavior {
  @override
  void act(String name, String species) {
    print('$name the $species is hiding from danger.');
  }
}
