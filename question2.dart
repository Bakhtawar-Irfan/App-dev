import 'dart:async';
import 'dart:io'; // Import to use exit()

Future<String> fetchWeatherData() async {
  await Future.delayed(Duration(seconds: 3));
  return "Weather: Sunny, 25°C";
}

Future<void> main() async {
  print("Fetching weather data...");

  try {
    String weather = await fetchWeatherData();
    print("Weather Data: $weather");
  } catch (e) {
    print("Error: $e");
  }

  exit(0); // Ensures program stops
}
