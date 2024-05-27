//

import 'package:flutter/material.dart';

class WeatherForecastScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather Forecast',
            style: Theme.of(context).textTheme.displayLarge),
      ),
      body: Column(
        children: [
          ListTile(
            leading: Icon(Icons.wb_sunny),
            title: Text('Current: 25°C, Clear',
                style: Theme.of(context).textTheme.bodyLarge),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.wb_sunny),
            title: Text('02/01: 24°C, Sunny',
                style: Theme.of(context).textTheme.bodyLarge),
          ),
          ListTile(
            leading: Icon(Icons.wb_cloudy),
            title: Text('03/01: 22°C, Cloudy',
                style: Theme.of(context).textTheme.bodyLarge),
          ),
          ListTile(
            leading: Icon(Icons.grain),
            title: Text('04/01: 20°C, Rain',
                style: Theme.of(context).textTheme.bodyLarge),
          ),
        ],
      ),
    );
  }
}
