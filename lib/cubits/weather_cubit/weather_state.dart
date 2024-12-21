import 'package:weather_app/models/weather_model.dart';

abstract class WeatherState {}

class WeatherInitial extends WeatherState {}

class WeatherLoading extends WeatherState {}

class WeatherFailure extends WeatherState {}

class WeatherSuccess extends WeatherState {
  final WeatherModel weatherModel;

  WeatherSuccess(this.weatherModel);  
}
