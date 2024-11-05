import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "The Weather Forecast",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.redAccent,
          centerTitle: true,
        ),
        body:const Center(
          child: Padding(
            padding: EdgeInsets.all(30),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  WeatherForecast(
                    day: DayOfWeek.Sun,
                    con: Condition.Sunny,
                    temperatureMax: 12,
                    temperatureMin: 8,
                  ),
                  SizedBox(width: 10),
                  WeatherForecast(
                    day: DayOfWeek.Mon,
                    con: Condition.Cloudy,
                    temperatureMax: 11,
                    temperatureMin: 4,
                  ),
                  SizedBox(width: 10),
                  WeatherForecast(
                    day: DayOfWeek.Tue,
                    con: Condition.Rainy,
                    temperatureMax: 7,
                    temperatureMin: 1,
                  ),
                  SizedBox(width: 10),
                  WeatherForecast(
                    day: DayOfWeek.Wed,
                    con: Condition.Snowy,
                    temperatureMax: 1,
                    temperatureMin: -18,
                  ),
                  SizedBox(width: 10),
                  WeatherForecast(
                    day: DayOfWeek.Thu,
                    con: Condition.Sunny,
                    temperatureMax: 30,
                    temperatureMin: 20,
                  ),
                  SizedBox(width: 10),
                  WeatherForecast(
                    day: DayOfWeek.Fri,
                    con: Condition.Cloudy,
                    temperatureMax: 20,
                    temperatureMin: 8,
                  ),
                  SizedBox(width: 10),
                  WeatherForecast(
                    day: DayOfWeek.Sat,
                    con: Condition.Sunny,
                    temperatureMax: 40,
                    temperatureMin: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ),
  );
}

class WeatherForecast extends StatelessWidget {
  final DayOfWeek day;
  final Condition con;
  final int temperatureMin;
  final int temperatureMax;

  const WeatherForecast({
    Key? key,
    required this.day,
    required this.con,
    required this.temperatureMax,
    required this.temperatureMin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            day.name,
            style: const TextStyle(fontSize: 16, color: Colors.blueAccent),
          ),
          const SizedBox(height: 4),
          Icon(con.iconData, color: con.iconColor, size: 30),
          const SizedBox(height: 10),
          Text(
            '$temperatureMax° / $temperatureMin°',
            style: const TextStyle(fontSize: 16, color: Colors.black),
          ),
        ],
      ),
    );
  }
}

enum Condition {
  Sunny(Icons.wb_sunny, Colors.yellow),
  Rainy(Icons.umbrella, Colors.blue),
  Cloudy(Icons.cloud, Colors.grey),
  Snowy(Icons.ac_unit, Colors.lightBlue);

  final IconData iconData;
  final Color iconColor;
  const Condition(this.iconData, this.iconColor);
}

enum DayOfWeek { Sun, Mon, Tue, Wed, Thu, Fri, Sat }
