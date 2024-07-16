import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/core/helper/constant.dart';
import 'package:weatherapp/features/data/model/weather_model_.dart';
import 'package:weatherapp/features/logic/cubit/get_weather_cubit.dart';

class WeatherInfoBody extends StatelessWidget {
  final WeatherModel weather;
  const WeatherInfoBody({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    var weatherModel = BlocProvider.of<GetWeatherCubit>(context).weatherModel;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              getColorForWeatherCondition(weatherModel!.weatherCondition),
              getColorForWeatherCondition(weatherModel.weatherCondition)[300]!,
              getColorForWeatherCondition(weatherModel.weatherCondition)[50]!
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              weatherModel.cityName,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
            ),
            Text(
              " Updated at :${weatherModel.date.hour}:${weatherModel.date.minute}",
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.network("https:${weatherModel.image!}"),
                Text(
                  weatherModel.temp.round().toString(),
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      "MaxTemp:${weatherModel.maxTemp.round()}",
                      style: const TextStyle(fontSize: 16),
                    ),
                    Text(
                      "MinTemp:${weatherModel.maxTemp.round()}",
                      style: const TextStyle(fontSize: 16),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 32,
            ),
            Text(
              weatherModel.weatherCondition!,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
            ),
          ],
        ),
      ),
    );
  }
}
