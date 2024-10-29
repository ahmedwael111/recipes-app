import 'package:flutter/material.dart';
import 'package:recipes_app/models/one_mealModel.dart';

class GridOfNutrition extends StatelessWidget {
  const GridOfNutrition({
    super.key,
    required this.oneMealModel,
  });

  final OneMealModel oneMealModel;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GridView(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 2.0,
          crossAxisCount: 3, // Number of columns
          crossAxisSpacing: 0, // Horizontal space between items
          mainAxisSpacing: 0,
        ),
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Column(
              children: [
                const Text('Calories',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                Text(
                  '${oneMealModel.nutrients.firstWhere((nutrient) => nutrient.name == 'Calories', orElse: () => Nutrient(name: '', amount: 0, unit: 'g')).amount}  ${oneMealModel.nutrients.firstWhere((nutrient) => nutrient.name == 'Calories', orElse: () => Nutrient(name: '', amount: 0, unit: 'g')).unit}',
                  style: const TextStyle(fontSize: 16),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Column(
              children: [
                const Text('Carbohydrates',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                Text(
                  '${oneMealModel.nutrients.firstWhere((nutrient) => nutrient.name == 'Carbohydrates').amount} ${oneMealModel.nutrients.firstWhere((nutrient) => nutrient.name == 'Carbohydrates').unit}',
                  style: const TextStyle(fontSize: 16),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Column(
              children: [
                const Text('Fat',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                Text(
                  '${oneMealModel.nutrients.firstWhere((nutrient) => nutrient.name == 'Fat').amount} ${oneMealModel.nutrients.firstWhere((nutrient) => nutrient.name == 'Fat').unit}',
                  style: const TextStyle(fontSize: 16),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Column(
              children: [
                const Text('Protein',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                Text(
                  '${oneMealModel.nutrients.firstWhere((nutrient) => nutrient.name == 'Protein').amount} ${oneMealModel.nutrients.firstWhere((nutrient) => nutrient.name == 'Protein').unit}',
                  style: const TextStyle(fontSize: 16),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Column(
              children: [
                const Text('Fiber',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                Text(
                  '${oneMealModel.nutrients.firstWhere((nutrient) => nutrient.name == 'Fiber', orElse: () => Nutrient(name: '', amount: 0, unit: 'g')).amount} ${oneMealModel.nutrients.firstWhere((nutrient) => nutrient.name == 'Fiber', orElse: () => Nutrient(name: '', amount: 0, unit: 'g')).unit}',
                  style: const TextStyle(fontSize: 16),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 0),
            child: Column(
              children: [
                const Text('Sugar',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                Text(
                  '${oneMealModel.nutrients.firstWhere((nutrient) => nutrient.name == 'Sugar').amount} ${oneMealModel.nutrients.firstWhere((nutrient) => nutrient.name == 'Sugar').unit}',
                  style: const TextStyle(fontSize: 16),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
