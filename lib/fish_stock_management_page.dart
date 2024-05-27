// import 'package:flutter/material.dart';
// import 'models/fish_stock.dart';
// import 'add_fish_stock_page.dart';

// class FishStockManagementPage extends StatelessWidget {
//   final List<FishStock> fishStocks = [
//     FishStock(species: 'Tuna', currentStock: 100, quota: 200),
//     FishStock(species: 'Salmon', currentStock: 80, quota: 150),
//     // Tambahkan data contoh lainnya
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Fish Stock Management'),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//               itemCount: fishStocks.length,
//               itemBuilder: (context, index) {
//                 final stock = fishStocks[index];
//                 return ListTile(
//                   title: Text(stock.species),
//                   subtitle: Text(
//                       'Current Stock: ${stock.currentStock}, Quota: ${stock.quota}'),
//                   trailing: Icon(
//                     stock.isStockSufficient()
//                         ? Icons.check_circle
//                         : Icons.warning,
//                     color:
//                         stock.isStockSufficient() ? Colors.green : Colors.red,
//                   ),
//                 );
//               },
//             ),
//           ),
//           ElevatedButton(
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => AddFishStockPage()),
//               );
//             },
//             child: Text('Add/Update Stock'),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class FishStockManagementPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fish Stock Management',
            style: Theme.of(context).textTheme.displayLarge),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(8.0),
            child: ListTile(
              title: Text('Tuna: 500 kg / 1000 kg',
                  style: Theme.of(context).textTheme.bodyLarge),
              subtitle: Text('Status: Healthy',
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
