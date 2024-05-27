import 'package:flutter/material.dart';

class WeatherWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Contoh data cuaca
    final String location = "Sulawesi Utara";
    final String temperature = "28°C";
    final String condition = "Sunny";

    return Card(
      margin: EdgeInsets.all(16.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Current Weather',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Row(
              children: [
                Icon(Icons.location_on, color: Colors.blue),
                SizedBox(width: 8.0),
                Text(location),
              ],
            ),
            Row(
              children: [
                Icon(Icons.thermostat, color: Colors.orange),
                SizedBox(width: 8.0),
                Text(temperature),
              ],
            ),
            Row(
              children: [
                Icon(Icons.wb_sunny, color: Colors.yellow),
                SizedBox(width: 8.0),
                Text(condition),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
