import 'package:flutter/material.dart';
import 'widget/weather_widget.dart';
import 'widget/catches_summary_widget.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            WeatherWidget(),
            CatchesSummaryWidget(),
            // Tambahkan widget lainnya sesuai kebutuhan
          ],
        ),
      ),
    );
  }
}
