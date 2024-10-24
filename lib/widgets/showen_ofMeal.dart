import 'package:flutter/material.dart';
import 'package:recipes_app/constants.dart';
import 'package:recipes_app/models/one_mealModel.dart';
import 'package:recipes_app/widgets/tabBar_view.dart';

class ShowenOfMeal extends StatelessWidget {
  const ShowenOfMeal({
    super.key,
    required this.oneMealModel,
  });
  final OneMealModel oneMealModel;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(32),
                  child: Image.network(
                    oneMealModel.image,
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(
                    oneMealModel.title,
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: const Icon(
                    Icons.favorite_sharp, color: Colors.red,
                    size: 38,
                    // color: Colors.white,
                  )),
            ),
            const Divider(),
            const TabBar(
                // controller: ,
                indicatorColor: kcolor,
                indicatorWeight: 5,
                labelColor: kcolor,
                labelStyle:
                    TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                tabs: [
                  Tab(
                    text: 'Information',
                    height: 33,
                  ),
                  Tab(
                    text: 'Ingradiants',
                  ),
                  Tab(
                    text: 'Instractions',
                  )
                ]),
            // TabBarView wrapped in a fixed height container to display content
            CoustomTabbarView(
              oneMealModel: oneMealModel,
            ),
          ],
        ),
      ),
    );
  }
}
