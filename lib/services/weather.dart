import 'package:clima/services/location.dart';
import 'package:clima/services/networking.dart';

class WeatherModel {
  final APIkey = '4477fe494f294ecc65367daebe88525d';

  Future<dynamic> getCityWeatherData(dynamic countryName) async {
    String weatherUrl =
        'http://api.openweathermap.org/data/2.5/weather?q=$countryName&appid=$APIkey&units=metric';
    NetworkArea networkArea = NetworkArea(url: weatherUrl);
    var weatherData = await networkArea.getData();

    return weatherData;
  }

  Future<dynamic> getWeatherData() async {
    Location location = Location();
    await location.getLocation();
    NetworkArea network = NetworkArea(
        url:
            'http://api.openweathermap.org/data/2.5/weather?lat=${location.latitude}&lon=${location.longitude}&appid=$APIkey&units=metric');
    var decodedData = await network.getData();

    return decodedData;
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '๐ฉ';
    } else if (condition < 400) {
      return '๐ง';
    } else if (condition < 600) {
      return 'โ๏ธ';
    } else if (condition < 700) {
      return 'โ๏ธ';
    } else if (condition < 800) {
      return '๐ซ';
    } else if (condition == 800) {
      return 'โ๏ธ';
    } else if (condition <= 804) {
      return 'โ๏ธ';
    } else {
      return '๐คทโ';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s ๐ฆ time';
    } else if (temp > 20) {
      return 'Time for shorts and ๐';
    } else if (temp < 10) {
      return 'You\'ll need ๐งฃ and ๐งค';
    } else {
      return 'Bring a ๐งฅ just in case';
    }
  }
}
