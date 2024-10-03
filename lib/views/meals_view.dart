import 'package:flutter/material.dart';
import 'package:recipes_app/constants.dart';

class MealsView extends StatelessWidget {
  const MealsView({super.key});
  static String id = 'MealsVeiw';
  @override
  Widget build(BuildContext context) {
    String name = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              name,
              style: const TextStyle(
                  color: kcolor, fontWeight: FontWeight.bold, fontSize: 26),
            ),
            const Text(
              ' Dishs',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
