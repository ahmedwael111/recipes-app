import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_app/Services/meals_services.dart';
import 'package:recipes_app/cubits/cubit/request_meals_state.dart';
import 'package:recipes_app/models/meals_model.dart';

class RequestMealsCubit extends Cubit<RequestMealsState> {
  RequestMealsCubit() : super(RequestMealsInitial());
  List<MealsModel>? mealsList;
  getMeals({required String mealName}) async {
    log('Fetching meals for $mealName');
    if (mealsList == null) {
      emit(RequestMealsLoading());
    }
    try {
      mealsList =
          await MealsServices(dio: Dio()).getMealsServices(mealType: mealName);
      log('Fetched Meals: ${mealsList!.length}');
      emit(RequestMealsSuccess());
    } catch (e) {
      log('Error Fetching Meals: ${e.toString()}');
      emit(RequestMealsFaluier(errorMessage: e.toString()));
    }
  }
}
