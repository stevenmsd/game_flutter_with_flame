import 'package:flutter/material.dart';
import 'package:game_flutter_with_flame/routes.dart';

final navigatorKey = GlobalKey<NavigatorState>();

void main() {
  runApp(MaterialApp(
    navigatorKey: navigatorKey,
    debugShowCheckedModeBanner: false,
    onGenerateRoute: Routes.routes,
  ));
}
