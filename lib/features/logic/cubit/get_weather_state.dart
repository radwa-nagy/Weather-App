part of 'get_weather_cubit.dart';

sealed class GetWeatherState {}

final class GetWeatherInitial extends GetWeatherState {}

final class WeatherLoadedState extends GetWeatherState {
  final WeatherModel? weatherModel;

  WeatherLoadedState({this.weatherModel});
}

final class WeatherFailureState extends GetWeatherState {}
