import 'package:flutter/material.dart';
import 'package:recipes_app/constants.dart';
import 'package:recipes_app/widgets/coustom_card.dart';
import 'package:recipes_app/widgets/list_view_ofCard.dart';

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
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(' Hey Ahmed ,Good Morning'),
          SizedBox(
            height: 300,
          ),
          Categoryslistview(),
          Categoryslistview(),
        ],
      ),
    );
  }
}

class KindOfMealsItem extends StatelessWidget {
  const KindOfMealsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(22),
      elevation: 22,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(55),
      ),
      child: const Text('ahmed'),
    );
  }
}
