import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/core/helper/extentions.dart';
import 'package:weatherapp/features/logic/cubit/get_weather_cubit.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search City'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Center(
          child: TextField(
            onSubmitted: (value) async {
              var getWeatherCubit = BlocProvider.of<GetWeatherCubit>(context);
              getWeatherCubit.getCurrentWeather(cityName: value);

              context.pop();
            },
            decoration: const InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 32, horizontal: 16),
                labelText: "search",
                suffixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green)),
                hintText: "Enter the city name"),
          ),
        ),
      ),
    );
  }
}
