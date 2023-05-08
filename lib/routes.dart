import 'package:flutter/material.dart';
import 'package:game_flutter_with_flame/lesson01/game_lesson_01.dart';
import 'package:game_flutter_with_flame/lesson_menu.dart';
import 'package:game_flutter_with_flame/my_game.dart';

class Routes {
  static const menu = '/';
  static const lesson01 = '/lesson01';

  static Route routes(RouteSettings settings) {
    MaterialPageRoute _buildRoute(Widget widget) {
      return MaterialPageRoute(builder: (_) => widget, settings: settings);
    }

    switch (settings.name) {
      case menu:
        return _buildRoute(const LessonMenu());
      case lesson01:
        return _buildRoute(MyGameWidget(
          game: GameLesson01(),
        ));

      default:
        throw Exception('Route does not exists');
    }
  }
}
