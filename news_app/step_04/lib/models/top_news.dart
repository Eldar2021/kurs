// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:step_04/models/article.dart';

class TopNews {
  const TopNews({
    required this.status,
    required this.totalResults,
    required this.articles,
  });

  final String status;
  final int totalResults;
  final List<Article> articles;

  factory TopNews.fromJson(Map<String, dynamic> json) {
    return TopNews(
      status: json["status"],
      totalResults: json["totalResults"],
      articles: List<Article>.from((json["articles"]).map((e) => Article.jsonDonKelgen(e))),
    );
  }
}
