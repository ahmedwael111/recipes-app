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
    // OneMealModel oneMealModel =
    //     BlocProvider.of<OneMealCubit>(context).oneMealModel;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: ListView(
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
              child: Row(
                children: [
                  Flexible(
                    child: Text(
                      oneMealModel.title,
                      style: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        // color: Colors.white
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  const Column(
                    children: [
                      Icon(
                        Icons.favorite_sharp,
                        size: 33,
                        // color: Colors.white,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 33,
                      )
                    ],
                  )
                ],
              ),
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
