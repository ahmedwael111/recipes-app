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
      padding: const EdgeInsets.symmetric(horizontal: 12),
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
    final String imageUrl = ingredient.imageUrl;
    bool imageState = false;
    if (imageUrl.startsWith('http')) {
      imageState = true;
    }

    return ListTile(
        contentPadding: EdgeInsets.zero,
        horizontalTitleGap: 2,
        leading: const Text(
          '•',
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
        title: Text(
          ingredient.original,
          style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
        trailing: imageState
            ? Image.network(
                imageUrl,
                // scale: 1.0,
              )
            : Image.asset(
                'assets/webvilla-hv1MrBzGGNY-unsplash.jpg',
                // scale: 1.0,
              ));
  }
}
