import 'package:flutter/material.dart';

import 'package:game_test/components/continent_card.dart';
import 'package:game_test/constants/app_color.dart';
import 'package:game_test/constants/app_text.dart';
import 'package:game_test/models/continent.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: const Text(
          AppText.gameTitle,
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings,
              color: AppColors.blue,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
          ),
        ],
        elevation: 0,
      ),
      body: Column(
        children: [
          const Divider(
            height: 2,
            color: Colors.black,
            indent: 30,
            endIndent: 30,
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(14),
              itemCount: continents.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) {
                return ContinentCard(cont: continents[index]);
              },
            ),
          )
        ],
      ),
    );
  }
}
