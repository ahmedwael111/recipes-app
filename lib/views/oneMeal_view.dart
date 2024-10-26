import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_app/cubits/cubit/one_meal_cubit.dart';
import 'package:recipes_app/models/meals_model.dart';
import 'package:recipes_app/views/meals_view.dart';
import 'package:recipes_app/widgets/indicator.dart';
import 'package:recipes_app/widgets/showen_ofMeal.dart';

class OneMealView extends StatelessWidget {
  const OneMealView({super.key});
  static String id = 'oneMealView';
  @override
  Widget build(BuildContext context) {
    MealsModel mealsModel =
        ModalRoute.of(context)!.settings.arguments as MealsModel;
    BlocProvider.of<OneMealCubit>(context).getOneMeal(meal_id: mealsModel.id);
    return Scaffold(
      body: BlocBuilder<OneMealCubit, OneMealState>(
        builder: (context, state) {
          if (state is OneMealInitial) {
            return const InitialIcon();
          } else if (state is OneMealLoading) {
            return const Indicator();
          } else if (state is OneMealSuccess) {
            return  ShowenOfMeal();
          } else if (state is OneMealFuilure) {
            return Center(
              child: Text(
                state.errorMessage,
                style: const TextStyle(fontSize: 28),
              ),
            );
          } else {
            return const Center(child: Text('try ahmed'));
          }
        },
      ),
    );
  }
}
