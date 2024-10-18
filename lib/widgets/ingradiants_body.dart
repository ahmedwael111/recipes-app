import 'package:flutter/material.dart';
import 'package:recipes_app/models/one_mealModel.dart';

class IngradiantsBody extends StatelessWidget {
  const IngradiantsBody({
    super.key,
    required this.oneMealModel,
  });
  final OneMealModel oneMealModel;
  @override
  Widget build(BuildContext context) {
    final List<Ingredient> ingradiantList = oneMealModel.ingredients;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.builder(
        itemCount: ingradiantList.length,
        itemBuilder: (context, index) {
          return IngradiantItem(
            ingredient: ingradiantList[index],
          );
        },
      ),
    );
  }
}

class IngradiantItem extends StatelessWidget {
  const IngradiantItem({
    super.key,
    required this.ingredient,
  });
  final Ingredient ingredient;
  @override
  Widget build(BuildContext context) {
    // final String imageUrl = ingredient.imageUrl;
    // bool imageState = false;
    // if (imageUrl.startsWith('http')) {
    //   imageState = true;
    // }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          Flexible(
            child: Text(
              '•  ${ingredient.original}',
              style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
          ),
          // SizedBox(
          //   height: 2,
          //   width: 2,
          //   child: imageState
          //       ? Image.network(
          //           imageUrl,
          //           // scale: 1.0,
          //         )
          //       : Image.asset(
          //           'assets/webvilla-hv1MrBzGGNY-unsplash.jpg',
          //           // scale: 1.0,
          //         ),
          // )
        ],
      ),
    );
  }
}
