import 'package:flutter/material.dart';

class AddFishStockPage extends StatelessWidget {
  final TextEditingController speciesController = TextEditingController();
  final TextEditingController currentStockController = TextEditingController();
  final TextEditingController quotaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tambah/Update Stok'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: speciesController,
              decoration: InputDecoration(labelText: 'Spesies'),
            ),
            TextField(
              controller: currentStockController,
              decoration: InputDecoration(labelText: 'Stok saat ini'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: quotaController,
              decoration: InputDecoration(labelText: 'Quota'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Implementasikan logika untuk menyimpan data baru
                Navigator.pop(context);
              },
              child: Text('Simpan stok'),
            ),
          ],
        ),
      ),
    );
  }
}
