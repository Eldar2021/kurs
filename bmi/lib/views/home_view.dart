import 'package:flutter/material.dart';

import 'package:bmi/components/calculate_butoon.dart';
import 'package:bmi/components/heigth.dart';
import 'package:bmi/components/male_female.dart';
import 'package:bmi/components/status_card.dart';
import 'package:bmi/components/weigth_age.dart';
import 'package:bmi/utils/app_colors.dart';
import 'package:bmi/utils/app_text.dart';
import 'package:bmi/utils/text_styles.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool isFemale = false;
  int heigth = 180;
  int weigth = 60;
  int age = 28;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        title: const Text(AppText.appBarTitle, style: AppTextStyle.titleStyle),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  StatusCard(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isFemale = false;
                        });
                      },
                      child: MaleFemale(
                        icon: Icons.male,
                        text: AppText.male,
                        isFemale: !isFemale,
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  StatusCard(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isFemale = true;
                        });
                      },
                      child: MaleFemale(
                        icon: Icons.female,
                        text: AppText.female,
                        isFemale: isFemale,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            StatusCard(
              child: Heith(
                height: heigth,
                onChanged: (val) {
                  setState(() {
                    heigth = val.toInt();
                  });
                },
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Row(
                children: [
                  StatusCard(
                    child: WeigthAge(
                      text: AppText.weigth,
                      value: weigth,
                      add: (c) {
                        setState(() {
                          weigth = c;
                        });
                      },
                      remove: (c) {
                        setState(() {
                          weigth = c;
                        });
                      },
                    ),
                  ),
                  const SizedBox(width: 20),
                  StatusCard(
                    child: WeigthAge(
                      text: AppText.age,
                      value: age,
                      add: (c) {
                        setState(() {
                          age = c;
                        });
                      },
                      remove: (c) {
                        setState(() {
                          age = c;
                        });
                      },
                    ),
                  ),
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
