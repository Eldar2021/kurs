class ApiConst {
  static const String address =
      'https://api.openweathermap.org/data/2.5/weather?q=osh,&appid=41aa18abb8974c0ea27098038f6feb1b';

  static String latLongaddres(double lat, double long) =>
      'https://api.openweathermap.org/data/2.5/onecall?lat=$lat&lon=$long&exclude=hourly,daily,minutely&appid=41aa18abb8974c0ea27098038f6feb1b';

  static String getIcon(String iconCode, int size) {
    return 'http://openweathermap.org/img/wn/$iconCode@${size}x.png';
  }
}
