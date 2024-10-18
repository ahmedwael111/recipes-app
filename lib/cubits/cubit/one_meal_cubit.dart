
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_app/Services/one_meal_service.dart';
import 'package:recipes_app/models/one_mealModel.dart';

part 'one_meal_state.dart';

class OneMealCubit extends Cubit<OneMealState> {
 OneMealModel? _oneMealModel; // Private cache
  OneMealCubit() : super(OneMealInitial());

  getOneMeal({required dynamic mealid}) async {
    if (_oneMealModel != null) {
      emit(OneMealSuccess(oneMealModel: _oneMealModel!)); // Return cached data
      return; // Exit early if data is cached
    }

    emit(OneMealLoading());

    try {
      _oneMealModel =
          await OneMealService(dio: Dio()).getOneMealsServices(mealId: mealid);
      emit(OneMealSuccess(oneMealModel: _oneMealModel!));
    } catch (e) {
      log('Error Fetching Meals: ${e.toString()}');
      emit(OneMealFuilure(errorMessage: e.toString()));
    }
  }
}


//  OneMealModel? oneMealModel;
//   getOneMeal({required dynamic meal_id}) async {
//     log('Fetching meals for $meal_id');
//     if (oneMealModel == null) {
//       emit(OneMealLoading());