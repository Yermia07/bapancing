import 'package:flutter/material.dart';

class AddFishingLogEntryPage extends StatelessWidget {
  final TextEditingController speciesController = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  final TextEditingController locationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add New Entry'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: speciesController,
              decoration: InputDecoration(labelText: 'Species'),
            ),
            TextField(
              controller: weightController,
              decoration: InputDecoration(labelText: 'Weight (kg)'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: locationController,
              decoration: InputDecoration(labelText: 'Location'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Implementasikan logika untuk menyimpan data baru
                Navigator.pop(context);
              },
              child: Text('Save Entry'),
            ),
          ],
        ),
      ),
    );
  }
}
