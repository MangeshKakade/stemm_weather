import 'dart:convert';
import 'package:firebase_weather_app/models/weather_api.dart';
import 'package:http/http.dart' as http;

class WeatherService{
  Future<Weather> getWeatherData() async {
    final uri = Uri.parse('http://api.weatherapi.com/v1/forecast.json?key=9374b885f9824b808cc113544220912&q=$city&days=1&aqi=no&alerts=no');
    final response = await http.get(uri);
    if(response.statusCode == 200){
      return Weather.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed');
    }
  }
}
String city = 'India';
