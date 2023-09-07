class News {
  final int id;
  final String title;
  final String author;
  final String description;
  final DateTime createdAt;
  final DateTime updatedAt;
  final List<ArticleImage>? images;
  final List<String>? symbols;
  final String? source;
  final int? newsCount;
  final bool? isBreakingNews;
  final List<News>? similarArticles;

  News({
    required this.id,
    required this.title,
    required this.author,
    required this.description,
    required this.createdAt,
    required this.updatedAt,
    this.images,
    this.symbols,
    this.source,
    this.newsCount,
    this.isBreakingNews,
    this.similarArticles,
  });
}

class ArticleImage {
  final String size;
  final String url;

  ArticleImage({
    required this.size,
    required this.url,
  });
}

class NewsCategory {
  final int id;
  final String name;
  final String description;
  final List<String> keywords;

  NewsCategory({
    required this.id,
    required this.name,
    required this.description,
    required this.keywords,
  });
}
