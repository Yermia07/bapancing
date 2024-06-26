import 'package:flutter/material.dart';
import 'models/fishing_log_entry.dart';
import 'add_fishing_log_entry_page.dart';

class FishingLogPage extends StatelessWidget {
  final List<FishingLogEntry> fishingLogEntries = [
    FishingLogEntry(
      date: '2023-05-20',
      species: 'Tuna',
      weight: 5.2,
      location: 'Sulawesi Utara',
    ),
    FishingLogEntry(
      date: '2023-05-21',
      species: 'Salmon',
      weight: 3.8,
      location: 'Sulawesi Utara',
    ),
    // Tambahkan data contoh lainnya
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fishing Log'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: fishingLogEntries.length,
              itemBuilder: (context, index) {
                final entry = fishingLogEntries[index];
                return ListTile(
                  title: Text(entry.species),
                  subtitle: Text('${entry.weight} kg - ${entry.location}'),
                  trailing: Text(entry.date),
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => AddFishingLogEntryPage()),
              );
            },
            child: Text('Tambah data pancing'),
          ),
        ],
      ),
    );
  }
}
