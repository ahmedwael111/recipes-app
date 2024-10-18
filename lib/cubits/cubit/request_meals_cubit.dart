import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_app/Services/meals_services.dart';
import 'package:recipes_app/cubits/cubit/request_meals_state.dart';
import 'package:recipes_app/models/meals_model.dart';

class RequestMealsCubit extends Cubit<RequestMealsState> {
  List<MealsModel>? _mealsList; // Private cache
  RequestMealsCubit() : super(RequestMealsInitial());

  getMeals({required String mealName}) async {
    if (_mealsList != null) {
      emit(RequestMealsSuccess(mealsList: _mealsList!)); // Return cached data
      return; // Exit early if data is cached
    }

    emit(RequestMealsLoading());

    try {
      _mealsList = await MealsServices(dio: Dio()).getMealsServices(mealType: mealName);
      emit(RequestMealsSuccess(mealsList: _mealsList!));
    } catch (e) {
      emit(RequestMealsFaluier(errorMessage: e.toString()));
    }
  }
}
