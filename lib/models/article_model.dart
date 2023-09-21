class Article {
  final String title;

  const Article({
    required this.title,
  });

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(title: json['title']);
  }
}
