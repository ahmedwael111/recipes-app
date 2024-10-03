import 'package:flutter/material.dart';
import 'package:recipes_app/models/card_model.dart';
import 'package:recipes_app/views/meals_view.dart';

class CoustomCard extends StatelessWidget {
  const CoustomCard({super.key, required this.cardModel});
  final CardModel cardModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, MealsView.id,arguments: cardModel.name);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: Container(
          height: 180,
          width: 200,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 0,
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
                      cardModel.image,
                      height: 120,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    )),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 2),
                  child: Text(
                    cardModel.name,
                    style: const TextStyle(fontSize: 22),
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
