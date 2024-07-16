import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:weatherapp/features/data/model/weather_model_.dart';
import 'package:weatherapp/features/data/service/service_in_weather.dart';

part 'get_weather_state.dart';

class GetWeatherCubit extends Cubit<GetWeatherState> {
  GetWeatherCubit() : super(GetWeatherInitial());
  WeatherModel? weatherModel;

  getCurrentWeather({required String cityName}) async {
    try {
      weatherModel = await WeatherService(dio: Dio())
          .getCurrentWeather(cityName: cityName);
      emit(WeatherLoadedState(weatherModel: weatherModel!));
    } catch (e) {
      emit(WeatherFailureState());
    }
  }
}
