import 'package:flutter/material.dart';
import 'add_new_post_page.dart';

class CommunityForumPage extends StatelessWidget {
  final List<Map<String, dynamic>> posts = [
    {
      'user': 'Nelayan1',
      'content': 'Tips menangkap ikan tuna di musim hujan',
      'comments': 5,
    },
    {
      'user': 'Nelayan2',
      'content': 'Lokasi terbaik untuk memancing salmon',
      'comments': 3,
    },
    // Tambahkan data contoh lainnya
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Community Forum'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: posts.length,
              itemBuilder: (context, index) {
                final post = posts[index];
                return ListTile(
                  title: Text(post['user']),
                  subtitle: Text(post['content']),
                  trailing: Text('${post['comments']} comments'),
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AddNewPostPage()),
              );
            },
            child: Text('Add New Post'),
          ),
        ],
      ),
    );
  }
}
