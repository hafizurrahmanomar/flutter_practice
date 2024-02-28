import 'dart:convert';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WeatherListScreen(),
    );
  }
}

class WeatherListScreen extends StatelessWidget {
  final String jsonWeatherData = '''
    [
      {
        "city": "New York",
        "temperature": 20,
        "condition": "Clear",
        "humidity": 60,
        "windSpeed": 5.5
      },
      {
        "city": "Los Angeles",
        "temperature": 25,
        "condition": "Sunny",
        "humidity": 50,
        "windSpeed": 6.8
      },
      {
        "city": "London",
        "temperature": 15,
        "condition": "Partly Cloudy",
        "humidity": 70,
        "windSpeed": 4.2
      },
      {
        "city": "Tokyo",
        "temperature": 28,
        "condition": "Rainy",
        "humidity": 75,
        "windSpeed": 8.0
      },
      {
        "city": "Sydney",
        "temperature": 22,
        "condition": "Cloudy",
        "humidity": 55,
        "windSpeed": 7.3
      }
    ]
  ''';

  const WeatherListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<dynamic> weatherData = json.decode(jsonWeatherData);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App'),
      ),
      body: ListView.builder(
        itemCount: weatherData.length,
        itemBuilder: (context, index) {
          return WeatherCard(weather: weatherData[index]);
        },
      ),
    );
  }
}

class WeatherCard extends StatelessWidget {
  final dynamic weather;

  const WeatherCard({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'City: ${weather['city']}',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            Text('Temperature: ${weather['temperature']}°C'),
            Text('Condition: ${weather['condition']}'),
            Text('Humidity: ${weather['humidity']}%'),
            Text('Wind Speed: ${weather['windSpeed']} m/s'),
          ],
        ),
      ),
    );
  }
}
