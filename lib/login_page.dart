import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 50.0,
              child: Icon(Icons.person, color: Colors.white, size: 50.0),
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/');
              },
              child: Text('Login'),
            ),
            TextButton(
              onPressed: () {
                // Implementasi Lupa Password
              },
              child: Text('Lupa Password?'),
            ),
            TextButton(
              onPressed: () {
                // Implementasi Sign-Up
              },
              child: Text('Sign-Up'),
            ),
          ],
        ),
      ),
    );
  }
}
