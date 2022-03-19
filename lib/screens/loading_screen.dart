import 'package:clima/services/weather.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:clima/screens/location_screen.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  double latitude;
  double longitude;

  // which get triggered when the state initially get initialized.
  // it is called when the object is inserted into the tree.
  // as soon as the stateful widget get created and inserted into the widget tree.
  @override
  void initState() {
    super.initState();
    getLocation();
  }

  void getLocation() async {
    var weatherData = await WeatherModel().getWeatherData();
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return LocationScreen(weatherData);
        },
      ),
    );
  }

  // void getData() async {
  //   Response response = await get(
  //       'http://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$APIkey');
  //
  //   String data = response.body;
  //
  //   if (response.statusCode >= 200) {
  //     print(data);
  //     // var decodedData = jsonDecode(data);
  //     //
  //     // var longitude = decodedData['coord']['lon'];
  //     // var weatherDescription = decodedData['weather'][0]['description'];
  //     // double temperature = decodedData['main']['temp'];
  //     // int condition = decodedData['weather'][0]['id'];
  //     // String cityName = decodedData['name'];
  //     // print(longitude);
  //     // print(weatherDescription);
  //     // print(temperature);
  //     // print(condition);
  //     // print(cityName);
  //   } else {
  //     print(response.statusCode);
  //   }
  // }

  // the deactivate method get called when the stateful widget get destroyed.

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
  }

  // the build method get triggered when the widgets are actually build and show up in the screen.
  // it get called as soon as it build all the widget inside the screen, which is just like the button or scaffold get build
  // it will also called each time, when the stateful widget get rebuilt, which mean a change made in the screen or the property is changed, which the widget is depend on.
  @override
  Widget build(BuildContext context) {
    // getLocation();
    return Scaffold(
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.white,
          size: 100.0,
        ),
      ),
    );
  }
}
