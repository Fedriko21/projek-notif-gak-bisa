import 'dart:convert';
import 'package:http/http.dart' as http;

class WeatherService {
  static const String apiKey = 'ba887a18c76feacf59301f75459542bf';

  static Future<Map<String, dynamic>> getWeather(String city) async {
    final url =
        'http://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey&units=metric';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return {
        'weather': data['weather'][0]['main'],
        'temp': data['main']['temp'],
      };
    } else {
      throw Exception('Failed to fetch weather');
    }
  }

  static String recommendDrink(String weather) {
    final weatherLower = weather.toLowerCase();

    if (weatherLower.contains('rain')) {
      return 'Hujan hari ini, nikmati segelas Latte hangat ☕';
    } else if (weatherLower.contains('cloud') ||
        weatherLower.contains('clouds')) {
      return 'Hari berawan, nikmati Cappuccino hangat ☕';
    } else if (weatherLower.contains('clear')) {
      return 'Cuaca cerah, coba Iced Coffee segar 🧊';
    } else {
      return 'Nikmati kopi favoritmu hari ini!';
    }
  }
}
