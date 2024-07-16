import 'package:flutter/material.dart';
import 'package:weatherapp/core/helper/extentions.dart';
import 'package:weatherapp/core/routing/routes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/features/logic/cubit/get_weather_cubit.dart';

import 'package:weatherapp/features/widgets/noweatherbody.dart';
import 'package:weatherapp/features/widgets/weather_Info_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("WeatherApp"),
          actions: [
            IconButton(
                onPressed: () {
                  context.pushNamed(Routes.search);
                },
                icon: const Icon(Icons.search))
          ],
        ),
        body: BlocBuilder<GetWeatherCubit, GetWeatherState>(
          builder: (context, state) {
            if (state is GetWeatherInitial) {
              return const NoWeatherBody();
            } else if (state is WeatherLoadedState) {
              return WeatherInfoBody(
                weather: state.weatherModel!,
              );
            } else {
              return const Center(
                  child: Text(
                "oops,There was an error,try latter",
                style: TextStyle(fontSize: 20),
              ));
            }
          },
        ));
  }
}
