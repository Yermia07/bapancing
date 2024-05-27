import 'package:flutter/material.dart';

class AddNewPostPage extends StatelessWidget {
  final TextEditingController contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add New Post'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: contentController,
              decoration: InputDecoration(labelText: 'Content'),
              maxLines: 3,
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Implementasikan logika untuk menyimpan postingan baru
                Navigator.pop(context);
              },
              child: Text('Post'),
            ),
          ],
        ),
      ),
    );
  }
}
