import 'package:flutter/material.dart';
import 'package:step_04/theme/colors.dart';

class DetailDivider extends StatelessWidget {
  const DetailDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      height: 40,
      thickness: 2,
      color: AppColor.grey,
    );
  }
}
