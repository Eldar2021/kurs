import 'package:flutter/material.dart';
import 'package:step_04/components/news_card.dart';
import 'package:step_04/constants/text_constants.dart';
import 'package:step_04/models/top_news.dart';
import 'package:step_04/services/fetch_service.dart';
import 'package:step_04/theme/colors.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  TopNews? topNews;
  bool isSearch = false;

  Future<void> fetchData(String text) async {
    isSearch = true;
    setState(() {});
    topNews = await NewsRepo().fetchSearchNews(text);
    isSearch = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primary,
        title: TextField(
          decoration: const InputDecoration(
            filled: true,
            fillColor: Color.fromARGB(162, 255, 255, 255),
            border: OutlineInputBorder(),
          ),
          onSubmitted: (value) async {
            await fetchData(value);
          },
          onChanged: (value) async {},
        ),
      ),
      body: _body(),
    );
  }

  Widget _body() {
    if (isSearch) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    } else if (isSearch == false && topNews != null) {
      return ListView.builder(
        itemCount: topNews!.articles.length,
        itemBuilder: (context, index) {
          final news = topNews!.articles[index];
          return NewsCard(news: news);
        },
      );
    } else {
      return const Center(
        child: Text(AppText.pleaseSearch),
      );
    }
  }
}
