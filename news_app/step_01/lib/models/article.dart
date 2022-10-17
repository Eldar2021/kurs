import 'source.dart';

class Article {
  const Article({
    required this.source,
    this.author,
    required this.title,
    required this.description,
    this.url,
    this.urlToImage,
    required this.publishedAt,
    required this.content,
  });

  final Source source;
  final String? author;
  final String title;
  final String description;
  final String? url;
  final String? urlToImage;
  final String publishedAt;
  final String content;
}
