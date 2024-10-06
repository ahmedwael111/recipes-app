import 'package:flutter/material.dart';
import 'package:recipes_app/constants.dart';
import 'package:recipes_app/models/card_model.dart';
import 'package:recipes_app/widgets/second_coustom_card.dart';

class MealsView extends StatelessWidget {
  const MealsView({super.key});
  static String id = 'MealsVeiw';
  static List<CardModel> cardModels = [
    CardModel(
      image:
          'https://media.istockphoto.com/id/1222851180/photo/french-breakfast.jpg?s=2048x2048&w=is&k=20&c=Pqu70LY-SZFgbDgKScyrgB4FgR9LJKsn_iagm6ZF-_Q=', // Breakfast image
      name: 'Breakfast',
      time: '15 mins',
    ),
    CardModel(
      image:
          'https://plus.unsplash.com/premium_photo-1673108852141-e8c3c22a4a22?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', // Lunch image
      name: 'Lunch',
      time: '30 mins',
    ),
    CardModel(
      image:
          'https://media.istockphoto.com/id/1277133220/photo/comfort-food-pumpkin-soup-with-roasted-bacon.jpg?s=2048x2048&w=is&k=20&c=G_C3Oqi63cAfu9FGyoa5oLHKASRQFpafntKXmgrUkXw=', // Dinner image
      name: 'Dinner',
      time: '45 mins',
    ),
    CardModel(
      image:
          'https://media.istockphoto.com/id/1473199888/photo/salty-snacks-party-mix-an-assortment-of-crispy-appetizers-overhead.jpg?s=2048x2048&w=is&k=20&c=jbjDKb5GoA7iyk21hzUh7cevLF0OKyfYvk2ihqWr7po=', // Snacks image
      name: 'Snacks',
      time: '10 mins',
    ),
    CardModel(
      image:
          'https://images.unsplash.com/photo-1551024601-bec78aea704b?q=80&w=1964&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', // Dessert image
      name: 'Dessert',
      time: '20 mins',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    String name = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              name,
              style: const TextStyle(
                  color: kcolor, fontWeight: FontWeight.bold, fontSize: 26),
            ),
            const Text(
              ' Dishs',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
      body: GridView.builder(
        itemCount: cardModels.length,
        clipBehavior: Clip.none,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.25,
            crossAxisSpacing: 0,
            mainAxisSpacing: 10),
        itemBuilder: ((context, index) {
          return SecondCoustomCard(
            cardModel: cardModels[index],
          );
        }),
      ),
    );
  }
}
