
import 'package:recipes_app/models/meals_model.dart';

class RequestMealsState {}

final class RequestMealsInitial extends RequestMealsState {}

final class RequestMealsLoading extends RequestMealsState {}

final class RequestMealsSuccess extends RequestMealsState {
  final List<MealsModel> mealsList;

  RequestMealsSuccess({required this.mealsList});
}

final class RequestMealsFaluier extends RequestMealsState {
  final String errorMessage;

  RequestMealsFaluier({required this.errorMessage});
}
