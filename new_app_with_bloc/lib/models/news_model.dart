class News {
  const News({
    this.author,
    required this.title,
    required this.description,
    this.urlToImage,
    required this.publishedAt,
    this.content,
  });

  final String? author;
  final String title;
  final String? description;
  final String? urlToImage;
  final String publishedAt;
  final String? content;

  factory News.fromJson(Map<String, dynamic> json) {
    return News(
      author: json['author'] != null ? json['author'] as String : null,
      title: json['title'] as String,
      description: json['description'] != null ? json['description'] as String : null,
      urlToImage: json['urlToImage'] != null ? json['urlToImage'] as String : null,
      publishedAt: json['publishedAt'] as String,
      content: json['content'] != null ? json['content'] as String : null,
    );
  }
}
