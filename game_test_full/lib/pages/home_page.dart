import 'package:flutter/material.dart';

import 'package:game_test_full/components/continent_card.dart';
import 'package:game_test_full/constants/app_color.dart';
import 'package:game_test_full/constants/app_text.dart';
import 'package:game_test_full/models/continent.dart';
import 'package:game_test_full/pages/test_page.dart';

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
                return ContinentCard(
                  cont: continents[index],
                  onTap: () {
                    if (continents[index].suroo != null) {
                      Navigator.push<void>(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => TestPage(suroo: continents[index].suroo!),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text('Kechiresing bul continenttin suroosu jok'),
                      ));
                    }
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
