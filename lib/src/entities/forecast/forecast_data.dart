import 'package:humberto_farrapo_trabalhofinal_opta1/src/entities/forecast/forecast.dart';
import 'package:humberto_farrapo_trabalhofinal_opta1/src/entities/weather/weather_data.dart';

class ForecastData {
  const ForecastData(this.list);
  factory ForecastData.from(Forecast forecast) {
    return ForecastData(
      forecast.list.map((item) => WeatherData.from(item)).toList(),
    );
  }
  final List<WeatherData> list;
}
