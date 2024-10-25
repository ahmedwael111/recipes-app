import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_app/constants.dart';
import 'package:recipes_app/cubits/cubit/request_meals_cubit.dart';

class C2Textfield extends StatelessWidget {
  const C2Textfield({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: TextField(
        onSubmitted: (value) {
          BlocProvider.of<RequestMealsCubit>(context).getMeals(mealName: value);
        },
        cursorColor: kcolor,
        decoration: InputDecoration(
          filled: true,
          hintText: 'Search',
          hintStyle: const TextStyle(color: Colors.grey, fontSize: 22),
          prefixIcon: const Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: kcolor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: kcolor),
          ),
        ),
        // style: const TextStyle(color: kcolor),
      ),
    );
  }
}
