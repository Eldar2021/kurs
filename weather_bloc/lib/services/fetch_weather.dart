import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:weather_bloc/constants/api_const.dart';
import 'package:weather_bloc/models/weather_response.dart';

class WeatherService {
  final client = http.Client();

  /// [cityName] alyp oshol shaardyn aba yrayin beret
  Future<WeatherResponse?> getWeatherByCityName(String cityName) async {
    /// [uri] bir uri tuzup aldyk
    final uri = Uri.parse(ApiConst.weatherByCityName(cityName));
    try {
      /// bir endpintke request jiberip jatat
      final response = await client.get(uri);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final weather = WeatherResponse.fromJson(response.body);
        return weather;
      } else {
        log('response.statusCode = ${response.statusCode}');
        return null;
      }
    } catch (e) {
      log('getWeatherByCityName methodto bir kata: $e');
      return null;
    }
  }
}

final weatherService = WeatherService();
