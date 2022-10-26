import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:step_04/constants/api_constants.dart';
import 'package:step_04/models/article.dart';
import 'package:step_04/theme/text_styles.dart';
import 'package:step_04/views/detail_view.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({super.key, required this.news});

  final Article news;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => NewsDetailView(article: news),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: CachedNetworkImage(
                  imageUrl: news.urlToImage ?? ApiConst.defaultImage,
                  placeholder: (context, url) => Image.asset('assets/news_loading.webp'),
                  errorWidget: (context, url, e) => Image.asset('assets/news_error.jpeg'),
                  fit: BoxFit.fitWidth,
                ),
              ),
              const SizedBox(width: 14),
              Expanded(
                flex: 5,
                child: Text(
                  news.title,
                  style: AppTextStyle.newsTitle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
