import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_bloc/cubit/weather_cubit.dart';
import 'package:weather_bloc/models/weather_response.dart';

import '../services/fetch_weather.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WeatherCubit(weatherService)..getWeatherByCityName('Bishkek'),
      child: const HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('HomePage')),
      body: BlocBuilder<WeatherCubit, WeatherState>(
        builder: (context, state) {
          if (state is WeatherInitial) {
            return const Text('WeatherInitial');
          } else if (state is WeatherLoading) {
            return const LoadingWidget();
          } else if (state is WeatherSuccess) {
            return WeatherSuccessWidget(state.weatherResponse);
          } else if (state is WeatherError) {
            return ErrorWidget(state.errorText);
          } else {
            return const Text('Bilbeim');
          }
        },
      ),
    );
  }
}

class ErrorWidget extends StatelessWidget {
  const ErrorWidget(this.errorText, {Key? key}) : super(key: key);

  final String errorText;

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(errorText));
  }
}

class WeatherSuccessWidget extends StatelessWidget {
  const WeatherSuccessWidget(
    this.weatherResponse, {
    Key? key,
  }) : super(key: key);

  final WeatherResponse weatherResponse;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(weatherResponse.name),
          Text(weatherResponse.weather[0].main),
          Text(weatherResponse.weather[0].icon),
          Text(weatherResponse.weather[0].description),
          Text('${weatherResponse.main.feelsLike}'),
          Text('${weatherResponse.main.temp}'),
          Text('${weatherResponse.main.tempMax}'),
          Text('${weatherResponse.main.tempMin}'),
        ],
      ),
    );
  }
}

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}
