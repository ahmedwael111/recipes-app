import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_app/constants.dart';
import 'package:recipes_app/cubits/cubit/request_meals_cubit.dart';
import 'package:recipes_app/models/card_model.dart';
import 'package:recipes_app/widgets/grad_ofMeals.dart';
import 'package:recipes_app/widgets/indicator.dart';

class MealsView extends StatelessWidget {
  const MealsView({super.key});
  static String id = 'MealsVeiw';

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
      body: BlocBuilder<RequestMealsCubit, RequestMealsState>(
        builder: (context, state) {
          if (state is RequestMealsInitial) {
            return const Text('no data');
          }
          if (state is RequestMealsLoading) {
            return const Indicator();
          } else if (state is RequestMealsSuccess) {
            return  GradOfMeal();
          } else if (state is RequestMealsFaluier) {
            return Center(
              child: Text(state.errorMessage),
            );
          } else {
            return const Center(child: Text('try ahmed'));
          }
        },
      ),
    );
  }
}
