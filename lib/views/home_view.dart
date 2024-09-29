import 'package:flutter/material.dart';
import 'package:recipes_app/constants.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Recipe',
              style: TextStyle(
                  color: kcolor, fontWeight: FontWeight.bold, fontSize: 26),
            ),
            Text(
              'App',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
      body: const Column(
        children: [Text(' Hey Ahmed ,Good Morning')],
      ),
    );
  }
}
