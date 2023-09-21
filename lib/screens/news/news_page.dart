import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:lion_trade/services/api_key.dart';

class NewsArticle {
  final String sourceId;
  final String sourceName;
  final String author;
  final String title;
  final String description;
  final String url;
  final String urlToImage;
  final String publishedAt;
  final String content;

  NewsArticle({
    required this.sourceId,
    required this.sourceName,
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });

  factory NewsArticle.fromJson(Map<String, dynamic> json) {
    return NewsArticle(
      sourceId: json['source']['id'] ?? '',
      sourceName: json['source']['name'] ?? '',
      author: json['author'] ?? '',
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      url: json['url'] ?? '',
      urlToImage: json['urlToImage'] ?? '',
      publishedAt: json['publishedAt'] ?? '',
      content: json['content'] ?? '',
    );
  }
}

class NewsPage extends StatefulWidget {
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  List<NewsArticle> articles = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchNews();
  }

  Future<void> fetchNews() async {
    final String apiUrl = 'https://newsapi.org/v2/everything?q=Apple&from=2023-09-20&sortBy=popularity';
    final String newsApiKey = newsApiOrgKey; // Replace with your API key

    try {
      final response = await http.get(Uri.parse('$apiUrl&apiKey=$newsApiKey'));

      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);

        if (data['status'] == 'ok') {
          final List<dynamic> articleData = data['articles'];
          final List<NewsArticle> loadedArticles = [];

          for (final articleJson in articleData) {
            loadedArticles.add(NewsArticle.fromJson(articleJson));
          }

          setState(() {
            articles = loadedArticles;
            isLoading = false;
          });
        }
      } else {
        throw Exception('Failed to load news');
      }
    } catch (e) {
      print('Error loading news: $e');
      isLoading = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News Page'),
      ),
      body: isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: articles.length,
              itemBuilder: (context, index) {
                return NewsArticleWidget(
                  newsArticle: articles[index],
                );
              },
            ),
    );
  }
}

class NewsArticleWidget extends StatelessWidget {
  final NewsArticle newsArticle;

  NewsArticleWidget({required this.newsArticle});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
            child: CachedNetworkImage(
              imageUrl: newsArticle.urlToImage,
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
              placeholder: (context, url) => Container(
                height: 150,
                color: Colors.grey, // Placeholder image or background color
              ),
              errorWidget: (context, url, error) => Container(
                height: 150,
                color: Colors.grey, // Error placeholder image or background color
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  newsArticle.title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  newsArticle.description,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.access_time,
                      size: 16,
                      color: Colors.grey,
                    ),
                    SizedBox(width: 4),
                    Text(
                      newsArticle.publishedAt,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(width: 16),
                    Icon(
                      Icons.public,
                      size: 16,
                      color: Colors.grey,
                    ),
                    SizedBox(width: 4),
                    Text(
                      newsArticle.sourceName,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
