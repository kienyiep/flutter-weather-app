import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'dart:convert';

class NetworkArea {
  NetworkArea({@required this.url});

  final String url;

  Future<dynamic> getData() async {
    print('fetching location url');
    Response response = await get(url);

    String data = response.body;

    if (response.statusCode >= 200) {
      print(data);
      return jsonDecode(data);

      //
      // var longitude = decodedData['coord']['lon'];
      // var weatherDescription = decodedData['weather'][0]['description'];
      // double temperature = decodedData['main']['temp'];
      // int condition = decodedData['weather'][0]['id'];
      // String cityName = decodedData['name'];
      // print(longitude);
      // print(weatherDescription);
      // print(temperature);
      // print(condition);
      // print(cityName);
    } else {
      print(response.statusCode);
    }
  }
}
