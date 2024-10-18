import 'package:flutter/material.dart';
import 'package:recipes_app/models/one_mealModel.dart';
import 'package:recipes_app/widgets/information_body.dart';
import 'package:recipes_app/widgets/ingradiants_body.dart';

class CoustomTabbarView extends StatelessWidget {
  const CoustomTabbarView({super.key, required this.oneMealModel});
  final OneMealModel oneMealModel;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500, // Set an appropriate height for the content
      child: TabBarView(
        children: [
          // Information tab content
          InformationBody(oneMealModel: oneMealModel),
          // Ingredients tab content
          IngradiantsBody(oneMealModel: oneMealModel,),
          // Instructions tab content
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text('Here are the instructions to cook the meal.'),
          ),
        ],
      ),
    );
  }
}

