import 'package:step_01/models/article.dart';

class TopNews {
  const TopNews({
    required this.status,
    required this.totalResults,
    required this.articles,
  });
  
  final String status;
  final int totalResults;
  final List<Article> articles;
}
