import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_app/cubits/cubit/request_meals_cubit.dart';
import 'package:recipes_app/cubits/cubit/request_meals_state.dart';
import 'package:recipes_app/views/meals_view.dart';
import 'package:recipes_app/widgets/c2_text_field.dart';
import 'package:recipes_app/widgets/grad_ofMeals.dart';
import 'package:recipes_app/widgets/indicator.dart';
import 'package:recipes_app/widgets/message_no_internet.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leadingWidth: 0,
        title: const SizedBox(height: 55, child: C2Textfield()),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: BlocBuilder<RequestMealsCubit, RequestMealsState>(
              builder: (context, state) {
                if (state is RequestMealsInitial) {
                  return const InitialIcon();
                } else if (state is RequestMealsLoading) {
                  return const Indicator();
                } else if (state is RequestMealsSuccess) {
                  return  GradOfMeal();
                } else if (state is RequestMealsFaluier) {
                  return const MessageOfNoInterNet();
                } else {
                  return const Center(child: Text('try ahmed'));
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
