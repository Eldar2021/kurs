import 'dart:developer';

import 'package:bmi/utils/app_colors.dart';
import 'package:bmi/utils/app_text.dart';
import 'package:bmi/utils/text_styles.dart';
import 'package:flutter/material.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        log('basyldy');
      },
      child: Container(
        height: 70,
        width: double.infinity,
        color: AppColor.buttonColor,
        child: const Center(
          child: Text(AppText.calculate, style: AppTextStyle.titleStyle),
        ),
      ),
    );
  }
}
