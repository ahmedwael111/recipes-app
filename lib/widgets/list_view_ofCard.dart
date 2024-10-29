import 'package:flutter/material.dart';
import 'package:recipes_app/models/card_model.dart';
import 'package:recipes_app/widgets/coustom_card.dart';

class Categoryslistview extends StatefulWidget {
  const Categoryslistview({
    super.key,
  });

  @override
  State<Categoryslistview> createState() => _CategoryslistviewState();
}

class _CategoryslistviewState extends State<Categoryslistview> {
  final List<CardModel> cardModels = [
    CardModel(
      image:
          'assets/main_meals_asset/joseph-gonzalez-QaGDmf5tMiE-unsplash.jpg', // Breakfast image
      name: 'Breakfast',
      time: '15 mins',
    ),
    CardModel(
      image:
          'assets/main_meals_asset/davide-cantelli-jpkfc5_d-DI-unsplash.jpg', // Lunch image
      name: 'Lunch',
      time: '30 mins',
    ),
    CardModel(
      image:
          'assets/main_meals_asset/sara-dubler-upn2p9co0I0-unsplash.jpg', // Dinner image
      name: 'Dinner',
      time: '45 mins',
    ),
    CardModel(
      image:
          'assets/main_meals_asset/brooke-lark-M4E7X3z80PQ-unsplash.jpg', // Snacks image
      name: 'Snacks',
      time: '10 mins',
    ),
    CardModel(
      image:
          'assets/main_meals_asset/abhishek-hajare-6hr5YZDjyHc-unsplash.jpg', // Dessert image
      name: 'Dessert',
      time: '20 mins',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: SizedBox(
        height: 163,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: cardModels.length,
          itemBuilder: (context, index) {
            return CoustomCard(cardModel: cardModels[index]);
          },
        ),
      ),
    );
  }
}
