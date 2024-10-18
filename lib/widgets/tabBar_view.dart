import 'package:flutter/material.dart';
import 'package:recipes_app/models/one_mealModel.dart';
import 'package:recipes_app/widgets/information_body.dart';
import 'package:recipes_app/widgets/ingradiants_body.dart';
import 'package:recipes_app/widgets/instactions_body.dart';

class CoustomTabbarView extends StatelessWidget {
  const CoustomTabbarView({super.key, required this.oneMealModel});
  final OneMealModel oneMealModel;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      // height: 200, // Set an appropriate height for the content
      child: TabBarView(
        children: [
          // Information tab content
          InformationBody(oneMealModel: oneMealModel),
          // Ingredients tab content
          IngradiantsBody(
            oneMealModel: oneMealModel,
          ),
          // Instructions tab content
          InstractionsBody(oneMealModel: oneMealModel)
        ],
      ),
    );
  }
}
