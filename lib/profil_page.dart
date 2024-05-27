import 'package:flutter/material.dart';

class ProfilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 50.0,
              child: Icon(Icons.person, color: Colors.white, size: 50.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'Personal Information',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            Text('User Id: 12345'),
            Text('User Name: Nelayan123'),
            Text('Alamat: Desa Pesisir'),
          ],
        ),
      ),
    );
  }
}
