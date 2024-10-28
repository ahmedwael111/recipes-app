import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_app/cubits/cubit/one_meal_cubit.dart';
import 'package:recipes_app/cubits/cubit/request_meals_cubit.dart';
import 'package:recipes_app/cubits/cubit/theme_cubit_cubit.dart';
import 'package:recipes_app/views/home_view.dart';
import 'package:recipes_app/views/meals_view.dart';
import 'package:recipes_app/views/oneMeal_view.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => ThemeCubitCubit(),
    child: const RecipeApp(),
  ));
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => RequestMealsCubit(),
        ),
        BlocProvider(
          create: (context) => OneMealCubit(),
        )
      ],
      child: BlocBuilder<ThemeCubitCubit, ThemeData>(
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme:state,
            routes: {
              HomeView.id: (context) => const HomeView(),
              MealsView.id: (context) => const MealsView(),
              OneMealView.id: (context) => const OneMealView(),
            },
            initialRoute: HomeView.id,
          );
        },
      ),
    );
  }
}
