import 'package:game_flutter_with_flame/lesson02/Objects/box_kinematic.dart';
import 'package:game_flutter_with_flame/lesson02/Objects/floor_static.dart';
import 'package:game_flutter_with_flame/my_game.dart';

class GameLesson02 extends MyGame {
  @override
  Future<void> onLoad() async {
    super.onLoad();
    add(FloorStatic());
    add(BoxKinematic());
  }
}
