import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:recipes_app/models/meals_model.dart';

class MealsServices {
  final Dio dio;
  final String baseUrl = 'https://api.spoonacular.com/recipes';
  final String apiKey = 'f8adf64aaf854969b823f7ed5d74ff7e';

  MealsServices({required this.dio});
  Future<List<MealsModel>> getMealsServices({required String mealType}) async {
    try {
      Response response = await dio.get(
          '$baseUrl/complexSearch?apiKey=$apiKey&query=$mealType&number=100');
      log('request api : $baseUrl/complexSearch?apiKey=$apiKey&query=$mealType');
      Map<String, dynamic> data = response.data;
      List<dynamic> dataList = data['results'];

      List<MealsModel> mealsList = [];
      for (var recipe in dataList) {
        MealsModel mealsObject = MealsModel.fromJson(recipe);
        mealsList.add(mealsObject);
      }
      log('the response data: $mealsList');
      return mealsList;
    } on DioException catch (e) {
      log('Dio Error: ${e.toString()}'); // Log the full Dio exception
      String message =
          e.response?.data?['error']?['message'] ?? 'Unknown error occurred';
      throw Exception(message);
    } catch (e) {
      log(e.toString());
      throw Exception('ther wass an error');
    }
  }
}
