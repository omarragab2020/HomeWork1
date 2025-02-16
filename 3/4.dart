import 'dart:io';

void main() {
   stdout.write("\nEnter city name: ");
   String? city = stdin.readLineSync();
  if (city != null && city.isNotEmpty) {
        displayWeather(city);
      }
}
Map<String, dynamic> weatherData = {
  "Cairo": {
    "temperature": 28,  
    "condition": "Sunny"
  },
  "Egypt": {
    "temperature": 15,
    "condition": "Cloudy"  },
  "London": {
    "temperature": 22,
    "condition": "Rainy"},
  "Plastaine": {
    "temperature": 26,
    "condition": "Clear"},
};
void displayWeather(String city) {
   if (weatherData.containsKey(city)) {
    print(weatherData[city]);
   }
}