import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:step_03/components/detail_date_time.dart';
import 'package:step_03/components/detail_divider.dart';
import 'package:step_03/components/detaile_title.dart';
import 'package:step_03/components/read_more_button.dart';
import 'package:step_03/constants/api_constants.dart';
import 'package:step_03/models/article.dart';
import 'package:step_03/theme/colors.dart';
import 'package:step_03/theme/text_styles.dart';

class NewsDetailView extends StatelessWidget {
  const NewsDetailView({super.key, required this.article});
  final Article article;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primary,
        title: Text(
          article.title,
          overflow: TextOverflow.fade,
        ),
        actions: article.url != null
            ? [
                IconButton(
                  onPressed: () {
                    Share.share(article.url!);
                  },
                  icon: const Icon(Icons.share),
                )
              ]
            : null,
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(13, 17, 13, 20),
        children: [
          DetailTitle(title: article.title),
          const DetailDivider(),
          DetailDateTime(article: article.publishedAt),
          const SizedBox(height: 10),
          CachedNetworkImage(
            imageUrl: article.urlToImage ?? ApiConst.defaultImage,
            placeholder: (context, url) => Image.asset('assets/news_loading.webp'),
            errorWidget: (context, url, e) => Image.asset('assets/news_error.jpeg'),
            fit: BoxFit.fitWidth,
          ),
          const SizedBox(height: 10),
          Text(article.description ?? '', style: AppTextStyle.detailDescription),
          const SizedBox(height: 20),
          article.url != null
              ? ReadMoreButton(
                  onPressed: () async {
                    final uri = Uri.parse(article.url!);

                    if (await canLaunchUrl(uri)) {
                      await launchUrl(uri);
                    }
                  },
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
