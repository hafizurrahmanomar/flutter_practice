import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('News Feed'),
        ),
        body: NewsFeed(),
      ),
    );
  }
}

class NewsFeed extends StatelessWidget {
  final List<NewsArticle> articles = [
    NewsArticle(
      title: 'Flutter News 1',
      thumbnailUrl: 'https://via.placeholder.com/150',
    ),
    NewsArticle(
      title: 'Flutter News 2',
      thumbnailUrl: 'https://via.placeholder.com/150',
    ),
    // Add more articles as needed
  ];

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        return ListView.builder(
          itemCount: articles.length,
          itemBuilder: (context, index) {
            return NewsCard(article: articles[index]);
          },
        );
      },
    );
  }
}

class NewsCard extends StatelessWidget {
  final NewsArticle article;

  NewsCard({required this.article});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: ListTile(
        leading: Image.network(
          article.thumbnailUrl,
          height: 80.0,
          width: 80.0,
          fit: BoxFit.cover,
        ),
        title: Text(article.title),
        subtitle: Text('Article Subtitle'),
        onTap: () {
          // Handle article tap
        },
      ),
    );
  }
}

class NewsArticle {
  final String title;
  final String thumbnailUrl;

  NewsArticle({
    required this.title,
    required this.thumbnailUrl,
  });
}
