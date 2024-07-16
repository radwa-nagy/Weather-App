import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/core/helper/constant.dart';
import 'package:weatherapp/core/routing/app_router.dart';
import 'package:weatherapp/features/homepage.dart';
import 'package:weatherapp/features/logic/cubit/get_weather_cubit.dart';

void main() {
  runApp(WeatherApp(
    appRouter: AppRouter(),
  ));
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key, required this.appRouter});
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => GetWeatherCubit(),
        child: Builder(
          builder: (context) => BlocBuilder<GetWeatherCubit, GetWeatherState>(
            builder: (context, state) {
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                // theme: ThemeData(
                //     primarySwatch: getColorForWeatherCondition(
                //         BlocProvider.of<GetWeatherCubit>(context)
                //             .weatherModel!
                //             .weatherCondition)),
                onGenerateRoute: appRouter.generateRoute,
                home: const HomePage(),
              );
            },
          ),
        ));
  }
}
