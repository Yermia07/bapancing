import 'package:flutter/material.dart';

class UlasanPage extends StatelessWidget {
  final List<Map<String, dynamic>> ulasan = [
    {
      'name': 'Magellan',
      'rating': 5.0,
      'image':
          'https://via.placeholder.com/100', // Ganti dengan gambar profil yang sesuai
    },
    // Tambahkan ulasan lainnya sesuai kebutuhan
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ulasan'),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemCount: ulasan.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(vertical: 8.0),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(ulasan[index]['image']),
              ),
              title: Text(ulasan[index]['name']),
              subtitle: Row(
                children: [
                  Icon(Icons.star, color: Colors.yellow),
                  SizedBox(width: 4.0),
                  Text(ulasan[index]['rating'].toString()),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
