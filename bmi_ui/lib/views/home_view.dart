import 'package:bmi_ui/components/calculate_butoon.dart';
import 'package:bmi_ui/components/status_card.dart';
import 'package:bmi_ui/utils/app_colors.dart';
import 'package:bmi_ui/utils/app_text.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        title: const Text(
          AppText.appBarTitle,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: const [
                  StatusCard(icon: Icons.male, text: AppText.male),
                  SizedBox(width: 20),
                  StatusCard(icon: Icons.female, text: AppText.female),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Card(
                color: AppColor.cardColor,
                child: Column(
                  children: [
                   Row(),
                    const Text('Orto'),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Row(
                children: const [
                  StatusCard(icon: Icons.male, text: AppText.male),
                  SizedBox(width: 20),
                  StatusCard(icon: Icons.female, text: AppText.female),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const CalculateButton(),
    );
  }
}
