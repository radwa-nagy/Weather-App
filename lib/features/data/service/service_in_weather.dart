import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weatherapp/features/data/model/weather_model_.dart';

class WeatherService {
  final Dio dio;
  final String baseUrl = "https://api.weatherapi.com/v1";
  final String apiKey = "62aa71e1be0441649df124315240607";

  WeatherService({required this.dio});
  Future<WeatherModel> getCurrentWeather({required String cityName}) async {
    try {
      Response response = await dio
          .get("$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1");
      WeatherModel waetherModel = WeatherModel.fromjson(response.data);
      return waetherModel;
    } on DioException catch (e) {
      final String errorMessage = e.response?.data['error']['message'] ??
          "opps there was an error , try later";
      throw Exception(errorMessage);
    } catch (e) {
      log(e.toString());
      throw Exception("opps there was an error , try later");
    }
  }
}
