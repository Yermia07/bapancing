import 'package:flutter/material.dart';

class ProdukPage extends StatelessWidget {
  final List<Map<String, dynamic>> produk = [
    {
      'name': 'Ikan Laut',
      'price': '10,000/ekor',
      'stock': 22,
      'weight': '1kg',
    },
    // Tambahkan produk lainnya sesuai kebutuhan
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Produk'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://via.placeholder.com/100'), // Ganti dengan gambar profil yang sesuai
              radius: 50.0,
            ),
            SizedBox(height: 16.0),
            Text('alamat', style: TextStyle(fontSize: 18.0)),
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.all(10.0),
                itemCount: produk.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                ),
                itemBuilder: (context, index) {
                  return Card(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.network(
                            'https://via.placeholder.com/100'), // Ganti dengan gambar ikan yang sesuai
                        Text(produk[index]['name']),
                        Text(produk[index]['price']),
                        Text('Stok: ${produk[index]['stock']}'),
                        Text('Berat: ${produk[index]['weight']}'),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
