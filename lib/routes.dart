import 'package:flutter/material.dart';
import 'package:game_flutter_with_flame/lesson_menu.dart';

class Routes {
  static const menu = '/';

  static Route routes(RouteSettings settings) {
    MaterialPageRoute _buildRoute(Widget widget) {
      return MaterialPageRoute(builder: (_) => widget, settings: settings);
    }

    switch (settings.name) {
      case menu:
        return _buildRoute(const LessonMenu());

      default:
        throw Exception('Route does not exists');
    }
  }
}
