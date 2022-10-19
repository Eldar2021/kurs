// repository
import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:step_02/constants/api_constants.dart';
import 'package:step_02/models/top_news.dart';

class TopNewsRepo {
  final http.Client client = http.Client();

  Future<TopNews?> fetchTopNews() async {
    final uri = Uri.parse(ApiConst.topNews);

    final response = await client.get(uri);
    if (response.statusCode == 200 || response.statusCode == 201) {
      print(response.body);
      print(response.body.runtimeType);
      // String biz Map(json) ga kotorush kerek
      final data = jsonDecode(response.body);
      print(data);
      print(data.runtimeType);
      // alyngan map(json)dy TopNews modelge berish kerek
      final topNews = TopNews.fromJson(data);
      print(topNews);
      print(topNews.runtimeType);
      // bul method oshol modeldi kaitarysh kerek
      return topNews;
    }
  }
}
