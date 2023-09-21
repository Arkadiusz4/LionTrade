import 'dart:convert';

import 'package:lion_trade/models/article_model.dart';
import 'package:http/http.dart' as http;
import 'package:lion_trade/services/api_key.dart';

Future<List<Article>> fetchNews() async {
  const String apiUrl = 'https://newsapi.org/v2/top-headlines?country=pl&category=business';

  final response = await http.get(Uri.parse('$apiUrl&apiKey=$newsApiOrgKey'));

  if (response.statusCode == 200) {
    final Map<String, dynamic> data = json.decode(response.body);

    if (data['status'] == 'ok') {
      final List<dynamic> articleData = data['articles'];
      final List<Article> loadedArticles = [];

      for (final articleJson in articleData) {
        loadedArticles.add(Article.fromJson(articleJson));
      }

      return loadedArticles;
    } else {
      throw Exception('Failed to load news');
    }
  } else {
    throw Exception('Failed to load news');
  }
}
