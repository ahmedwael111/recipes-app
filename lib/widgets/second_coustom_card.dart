import 'package:flutter/material.dart';
import 'package:recipes_app/models/card_model.dart';
import 'package:recipes_app/views/meals_view.dart';
import 'package:recipes_app/views/oneMeal_view.dart';

class SecondCoustomCard extends StatelessWidget {
  const SecondCoustomCard({super.key, required this.cardModel});
  final CardModel cardModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, OneMealView.id, arguments: cardModel.name);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: Container(
          height: 150,
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
                      const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  child: ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      cardModel.name,
                      style: const TextStyle(fontSize: 22),
                    ),
                    subtitle: const Row(
                      children: [
                        Icon(Icons.timelapse),
                        Text(
                          ' 55min',
                          style: TextStyle(fontSize: 22),
                        ),
                      ],
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
