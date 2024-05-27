import 'package:flutter/material.dart';

class CatchesSummaryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Contoh data ringkasan tangkapan
    final int totalCatches = 50;
    final int totalWeight = 120; // in kg

    return Card(
      margin: EdgeInsets.all(16.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Daily Catches Summary',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Row(
              children: [
                Icon(Icons.pets, color: Colors.green),
                SizedBox(width: 8.0),
                Text('Total Catches: $totalCatches'),
              ],
            ),
            Row(
              children: [
                Icon(Icons.scale, color: Colors.orange),
                SizedBox(width: 8.0),
                Text('Total Weight: $totalWeight kg'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
