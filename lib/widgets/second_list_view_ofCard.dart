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
          'https://images.unsplash.com/photo-1513104890138-7c749659a591?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', // Pizza image
      name: 'Pizza',
      time: '20 mins',
    ),
    CardModel(
      image:
          'https://plus.unsplash.com/premium_photo-1677000666761-ff476a65c8ba?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', // Pasta image
      name: 'Pasta',
      time: '30 mins',
    ),
    CardModel(
      image:
          'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?q=80&w=1899&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', // Burger image
      name: 'Burger',
      time: '25 mins',
    ),
    CardModel(
      image:
          'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', // Salad image
      name: 'Salad',
      time: '15 mins',
    ),
    CardModel(
      image:
          'https://images.unsplash.com/photo-1683315446874-e6a629087ef8?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', // Steak image
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
