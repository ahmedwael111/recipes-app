import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_app/cubits/cubit/request_meals_cubit.dart';
import 'package:recipes_app/models/meals_model.dart';
import 'package:recipes_app/widgets/second_coustom_card.dart';

class GradOfMeal extends StatelessWidget {
  const GradOfMeal({
    super.key, required this.mealsList,
  });
final List<MealsModel> mealsList ;
  @override
  Widget build(BuildContext context) {
    // if (BlocProvider.of<RequestMealsCubit>(context). != null) {
    //   List<MealsModel> mealsList =
    //       BlocProvider.of<RequestMealsCubit>(context).mealsList!;

      return GridView.builder(
        itemCount: mealsList.length,
        clipBehavior: Clip.none,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.25,
            crossAxisSpacing: 0,
            mainAxisSpacing: 10),
        itemBuilder: ((context, index) {
          return SecondCoustomCard(
            mealsModel: mealsList[index],
          );
        }),
      );
    // } else {
    //   return const Text('No meals found');
    // }
  }
}
