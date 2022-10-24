// repository
import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:step_03/constants/api_constants.dart';
import 'package:step_03/models/top_news.dart';

class TopNewsRepo {
  final http.Client client = http.Client();

  Future<TopNews?> fetchTopNews() async {
    final uri = Uri.parse(ApiConst.topNews);

    final response = await client.get(uri);
    if (response.statusCode == 200 || response.statusCode == 201) {
      final data = jsonDecode(response.body);
      final topNews = TopNews.fromJson(data);
      return topNews;
    }
    return null;
  }
}
