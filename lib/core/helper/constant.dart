import 'package:flutter/material.dart';

MaterialColor getColorForWeatherCondition(String condition) {
  if (condition == "null") {
    return Colors.blue;
  }
  switch (condition.toLowerCase()) {
    case "sunny":
      return Colors.yellow;

    case "clear":
      return Colors.deepOrange;
    case "partly cloudy":
      return Colors.lightBlue;
    case "cloudy":
      return Colors.blueGrey;
    case "overcast":
      return Colors.grey;
    case "mist":
      return Colors.lightBlue;
    case "patchy rain possible":
    case "light rain":
    case "moderate rain at times":
    case "moderate rain":
    case "heavy rain at times":
    case "heavy rain":
    case "light rain shower":
    case "moderate or heavy rain shower":
    case "torrential rain shower":
      return Colors.blue;
    case "patchy snow possible":
    case "blowing snow":
    case "blizzard":
    case "patchy light snow":
    case "light snow":
    case "patchy moderate snow":
    case "moderate snow":
    case "patchy heavy snow":
    case "heavy snow":
    case "light snow showers":
    case "moderate or heavy snow showers":
    case "patchy light snow with thunder":
    case "moderate or heavy snow with thunder":
      return Colors.lightBlue;
    case "patchy sleet possible":
    case "patchy freezing drizzle possible":
    case "freezing drizzle":
    case "heavy freezing drizzle":
    case "light freezing rain":
    case "moderate or heavy freezing rain":
    case "light sleet":
    case "moderate or heavy sleet":
    case "ice pellets":
    case "light showers of ice pellets":
    case "moderate or heavy showers of ice pellets":
      return Colors.cyan;
    case "fog":
    case "freezing fog":
      return Colors.grey;
    case "patchy light drizzle":
    case "light drizzle":
      return Colors.lightBlue;
    case "thundery outbreaks possible":
    case "patchy light rain with thunder":
    case "moderate or heavy rain with thunder":
      return Colors.deepPurple;
    default:
      return Colors.blueGrey;
  }
}
