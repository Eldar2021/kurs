import 'package:flutter/material.dart';
import 'package:step_04/theme/text_styles.dart';

class DetailTitle extends StatelessWidget {
  const DetailTitle({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: AppTextStyle.newsDetailTitle,
    );
  }
}
