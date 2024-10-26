import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_app/constants.dart';
import 'package:recipes_app/cubits/cubit/request_meals_cubit.dart';

class C2Textfield extends StatefulWidget {
  const C2Textfield({
    super.key,
  });

  @override
  State<C2Textfield> createState() => _C2TextfieldState();
}

class _C2TextfieldState extends State<C2Textfield> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: TextField(
        onSubmitted: (value) {
          setState(() {
            BlocProvider.of<RequestMealsCubit>(context)
                .getMeals(mealName: value);
          });
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
