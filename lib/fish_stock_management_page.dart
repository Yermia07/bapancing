import 'package:flutter/material.dart';
import 'models/fish_stock.dart';
import 'add_fish_stock_page.dart';

class FishStockManagementPage extends StatelessWidget {
  final List<FishStock> fishStocks = [
    FishStock(species: 'Tuna', currentStock: 100, quota: 200),
    FishStock(species: 'Salmon', currentStock: 80, quota: 150),
    // Tambahkan data contoh lainnya
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fish Stock Management'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: fishStocks.length,
              itemBuilder: (context, index) {
                final stock = fishStocks[index];
                return ListTile(
                  title: Text(stock.species),
                  subtitle: Text(
                      'Stok saat ini: ${stock.currentStock}, Quota: ${stock.quota}'),
                  trailing: Icon(
                    stock.isStockSufficient()
                        ? Icons.check_circle
                        : Icons.warning,
                    color:
                        stock.isStockSufficient() ? Colors.green : Colors.red,
                  ),
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AddFishStockPage()),
              );
            },
            child: Text('Tambah/update stok'),
          ),
        ],
      ),
    );
  }
}
