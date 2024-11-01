import 'package:flutter/material.dart';
import 'package:recipes_app/models/one_mealModel.dart';

class RowOfInformation extends StatelessWidget {
  const RowOfInformation({super.key, required this.oneMealModel});
  final OneMealModel oneMealModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            const Text(
              'Servings',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
            ),
            Text(oneMealModel.servings.toString(),
                style: const TextStyle(fontSize: 12))
          ],
        ),
        Column(
          children: [
            const Text('Total time',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
            Text(
              '${oneMealModel.readyInMinutes.toString()} min',
              style: const TextStyle(fontSize: 12),
            )
          ],
        ),
        Column(
          children: [
            const Icon(
              Icons.star, color: Colors.amber,
              size: 28,
              // color: Colors.white,
            ),
            Text(
              oneMealModel.aggregateLikes.toString(),
              style: const TextStyle(fontSize: 12),
            ),
          ],
        ),
      ],
    );
  }
}
