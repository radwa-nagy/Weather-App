class WeatherModel {
  final String cityName;
  final String? image;
  final DateTime date;
  final double temp;
  final double maxTemp;
  final double minTemp;
  final String weatherCondition;

  WeatherModel(
      {required this.cityName,
      required this.image,
      required this.date,
      required this.temp,
      required this.maxTemp,
      required this.minTemp,
      required this.weatherCondition});
  factory WeatherModel.fromjson(json) {
    return WeatherModel(
      cityName: json['location']['name'],
      image: json['forecast']['forecastday'][0]['day']['condition']['icon'],
      date: DateTime.parse(json['currrent']['last_updated']),
      temp: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
      maxTemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
      minTemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
      weatherCondition: json['forecast']['forecastday'][0]['day']['condition']
          ['text'],
    );
  }
}
