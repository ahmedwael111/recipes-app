import 'package:flutter/material.dart';
import 'package:recipes_app/models/card_model.dart';
import 'package:recipes_app/widgets/coustom_card.dart';

class SecondCategoryslistview extends StatefulWidget {
  const SecondCategoryslistview({
    super.key,
  });

  @override
  State<SecondCategoryslistview> createState() =>
      _SecondCategoryslistviewState();
}

class _SecondCategoryslistviewState extends State<SecondCategoryslistview> {
  final List<CardModel> cardModels2 = [
    CardModel(
      image:
          'assets/second_meals_asset/ivan-torres-MQUqbmszGGM-unsplash.jpg', // Pizza image
      name: 'Pizza',
      time: '20 mins',
    ),
    CardModel(
      image:
          'assets/second_meals_asset/mae-mu-Pvclb-iHHYY-unsplash.jpg', // Pasta image
      name: 'Pasta',
      time: '30 mins',
    ),
    CardModel(
      image:
          'assets/second_meals_asset/amirali-mirhashemian-sc5sTPMrVfk-unsplash.jpg', // Burger image
      name: 'Burger',
      time: '25 mins',
    ),
    CardModel(
      image:
          'assets/second_meals_asset/anna-pelzer-IGfIGP5ONV0-unsplash.jpg', // Salad image
      name: 'Salad',
      time: '15 mins',
    ),
    CardModel(
      image:
          'assets/second_meals_asset/thanti-riess-hH-tGYgv07M-unsplash.jpg', // Steak image
      name: 'Steak',
      time: '45 mins',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: SizedBox(
        height: 165,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: cardModels2.length,
          itemBuilder: (context, index) {
            return CoustomCard(cardModel: cardModels2[index]);
          },
        ),
      ),
    );
  }
}
