import 'package:flutter/material.dart';
import 'package:game_flutter_with_flame/routes.dart';

class LessonMenu extends StatelessWidget {
  const LessonMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Center(
          child: SizedBox(
        width: 350,
        child: ListView(
          children: const [
            SizedBox(height: 32),
            ButtonItem(title: 'Lesson 1', route: Routes.lesson01),
            ButtonItem(title: 'Lesson 2', route: Routes.lesson02),
          ],
        ),
      )),
    );
  }
}

class ButtonItem extends StatelessWidget {
  final String title;
  final String route;

  const ButtonItem({super.key, required this.title, required this.route});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(route);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(title),
            )),
        const SizedBox(height: 8)
      ],
    );
  }
}
