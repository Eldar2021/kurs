import 'package:flutter/material.dart';

import 'package:bmi_full/utils/app_colors.dart';
import 'package:bmi_full/utils/app_text.dart';
import 'package:bmi_full/utils/text_styles.dart';

Future<void> showMyDialog(BuildContext context, String text) async {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      backgroundColor: AppColor.backgroundColor,
      title: const Center(
        child: Text(
          AppText.appBarTitle,
          style: AppTextStyle.resultTextStyle,
        ),
      ),
      content: Text(
        text,
        style: AppTextStyle.resultTextStyle,
        textAlign: TextAlign.center,
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text(AppText.backButton),
        ),
      ],
    ),
  );
}
