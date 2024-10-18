import 'package:flutter/material.dart';
import 'package:recipes_app/models/one_mealModel.dart';

class CoustomTabbarView extends StatelessWidget {
  const CoustomTabbarView({super.key, required this.oneMealModel});
  final OneMealModel oneMealModel;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500, // Set an appropriate height for the content
      child: TabBarView(
        children: [
          // Information tab content
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          const Text(
                            'Servings',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Text(oneMealModel.servings.toString(),
                              style: const TextStyle(fontSize: 16))
                        ],
                      ),
                      Column(
                        children: [
                          const Text('ready time',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18)),
                          Text(
                            '${oneMealModel.readyInMinutes.toString()} min',
                            style: const TextStyle(fontSize: 16),
                          )
                        ],
                      ),
                      const Column(
                        children: [
                          Text('cook time',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18)),
                          Text('30 min', style: TextStyle(fontSize: 16))
                        ],
                      ),
                      const Column(
                        children: [
                          Text('calories',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18)),
                          Text('300', style: TextStyle(fontSize: 16))
                        ],
                      ),
                    ],
                  ),
                  const Text(
                    'the Nutritions',
                    style: TextStyle(fontSize: 26),
                  )
                ],
              ),
            ),
          ),
          // Ingredients tab content
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text('Here are the ingredients of the meal.'),
          ),
          // Instructions tab content
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text('Here are the instructions to cook the meal.'),
          ),
        ],
      ),
    );
  }
}
