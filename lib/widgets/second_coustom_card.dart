import 'package:flutter/material.dart';
import 'package:recipes_app/models/meals_model.dart';
import 'package:recipes_app/views/oneMeal_view.dart';

class SecondCoustomCard extends StatelessWidget {
  const SecondCoustomCard({super.key, required this.mealsModel});
  final MealsModel mealsModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, OneMealView.id, arguments: mealsModel);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: Container(
          height: 150,
          width: 200,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.4),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 1))
          ]),
          child: Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      mealsModel.image,
                      height: 100,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        // Replace with your own placeholder asset or network URL
                        return Image.asset(
                            'assets/webvilla-hv1MrBzGGNY-unsplash.jpg',
                            height: 100,
                            width: double.infinity,
                            fit: BoxFit.cover);
                      },
                    )),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
                  child: ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      mealsModel.title,
                      style: const TextStyle(fontSize: 22),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
