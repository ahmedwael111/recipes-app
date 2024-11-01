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
        Navigator.pushNamed(context, MealsView.id, arguments: cardModel.name);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: Container(
          height: 150,
          width: 200,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 5,
                offset: const Offset(0, 1))
          ]),
          child: Card(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      cardModel.image!,
                      height: 100,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    )),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  child: Text(
                    cardModel.name,
                    style: const TextStyle(fontSize: 18),
                    overflow: TextOverflow.ellipsis,
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
