import 'package:flutter/material.dart';

class PhotoDetailScreen extends StatelessWidget {
  final dynamic photo;

  const PhotoDetailScreen({super.key, required this.photo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Photo Details'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            photo['url'],
            width: 200,
            height: 200,
          ),
          const SizedBox(height: 20),
          Text('ID: ${photo['id']}'),
          const SizedBox(height: 10),
          Text('Title: ${photo['title']}'),
        ],
      ),
    );
  }
}