import 'package:flame/input.dart';
import 'package:flame_forge2d/flame_forge2d.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:game_flutter_with_flame/main.dart';
import 'package:game_flutter_with_flame/routes.dart';

class MyGame extends Forge2DGame with KeyboardEvents {
  MyGame() : super(zoom: 100, gravity: Vector2(0, 15));
  @override
  KeyEventResult onKeyEvent(RawKeyEvent event, Set KeysPressed) {
    if (event is RawKeyDownEvent) {
      if (KeysPressed.contains(LogicalKeyboardKey.escape)) {
        navigatorKey.currentState
            ?.pushNamedAndRemoveUntil(Routes.menu, (route) => false);
        return KeyEventResult.handled;
      }
    }
    return KeyEventResult.ignored;
  }

  @override
  Color backgroundColor() {
    return Colors.red;
  }
}
