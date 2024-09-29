import 'package:flutter/material.dart';
import 'package:recipes_app/views/home_view.dart';

void main() {
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeView(),
    );
  }
}
