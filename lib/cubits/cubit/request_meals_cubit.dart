import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_app/Services/meals_services.dart';
import 'package:recipes_app/models/meals_model.dart';
part 'request_meals_state.dart';

class RequestMealsCubit extends Cubit<RequestMealsState> {
  RequestMealsCubit() : super(RequestMealsInitial());
  List<MealsModel>? mealsList;
  getMeals({required String mealName}) async {
    if (mealsList == null) {
      emit(RequestMealsLoading());
    }
    try {
      mealsList =
          await MealsServices(Dio()).getMealsServices(mealType: mealName);
      emit(RequestMealsSuccess());
    } catch (e) {
      emit(RequestMealsFaluier(errorMessage: e.toString()));
    }
  }
}
