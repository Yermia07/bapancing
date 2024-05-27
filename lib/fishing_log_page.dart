// import 'package:flutter/material.dart';
// import 'models/fishing_log_entry.dart';
// import 'add_fishing_log_entry_page.dart';

// class FishingLogPage extends StatelessWidget {
//   final List<FishingLogEntry> fishingLogEntries = [
//     FishingLogEntry(
//       date: '2023-05-20',
//       species: 'Tuna',
//       weight: 5.2,
//       location: 'Sulawesi Utara',
//     ),
//     FishingLogEntry(
//       date: '2023-05-21',
//       species: 'Salmon',
//       weight: 3.8,
//       location: 'Sulawesi Utara',
//     ),
//     // Tambahkan data contoh lainnya
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Fishing Log'),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//               itemCount: fishingLogEntries.length,
//               itemBuilder: (context, index) {
//                 final entry = fishingLogEntries[index];
//                 return ListTile(
//                   title: Text(entry.species),
//                   subtitle: Text('${entry.weight} kg - ${entry.location}'),
//                   trailing: Text(entry.date),
//                 );
//               },
//             ),
//           ),
//           ElevatedButton(
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                     builder: (context) => AddFishingLogEntryPage()),
//               );
//             },
//             child: Text('Add New Entry'),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class FishingLogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fishing Log',
            style: Theme.of(context).textTheme.displayLarge),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(8.0),
            child: ListTile(
              title: Text('01/01/2024 - Tuna - 20 kg',
                  style: Theme.of(context).textTheme.bodyLarge),
              subtitle: Text('Location: Bay Area',
                  style: Theme.of(context).textTheme.bodyLarge),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Theme.of(context).colorScheme.secondary,
      ),
    );
  }
}
