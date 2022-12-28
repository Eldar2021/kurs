import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:new_app_with_bloc/constants/api_const.dart';
import 'package:new_app_with_bloc/models/news_model.dart';

class NewsService {
  const NewsService(this.client);

  final http.Client client;

  Future<List<News>?> getNewsByCountry(String countryCode) async {
    try {
      final uri = Uri.parse(ApiConst.countryNews(countryCode));
      final response = await client.get(uri);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final body = jsonDecode(response.body) as Map<String, dynamic>;
        final news = (body['articles'] as List).map((e) => News.fromJson(e)).toList();
        return news;
      } else {
        log('${response.statusCode}');
        return null;
      }
    } catch (e) {
      log(e.toString());
      return null;
    }
  }
}

final newsService = NewsService(http.Client());
