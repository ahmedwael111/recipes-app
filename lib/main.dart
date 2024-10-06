
import 'package:flutter/material.dart';
import 'package:recipes_app/views/home_view.dart';
import 'package:recipes_app/views/meals_view.dart';
import 'package:recipes_app/views/oneMeal_view.dart';

void main() {
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      routes: {
        HomeView.id: (context) => const HomeView(),
        MealsView.id: (context) => const MealsView(),
        OneMealView.id: (context) => const OneMealView(),
      },
      initialRoute: HomeView.id,
    );
  }
}
