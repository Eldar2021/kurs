import 'package:bmi_ui/utils/app_colors.dart';
import 'package:flutter/material.dart';

class StatusCard extends StatelessWidget {
  const StatusCard({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        color: AppColor.cardColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 80),
            const SizedBox(height: 10),
            Text(
              text,
              style: const TextStyle(
                color: AppColor.greyText,
                fontSize: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
