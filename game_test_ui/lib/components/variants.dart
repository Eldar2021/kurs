import 'package:flutter/material.dart';

import 'package:game_test_ui/constants/app_color.dart';

class Variants extends StatelessWidget {
  const Variants({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        itemCount: 4,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.7,
        ),
        itemBuilder: (context, i) {
          return Card(
            color: AppColors.inActive,
            child: InkWell(
              onTap: () {},
              child: Center(
                child: Text(i.toString()),
              ),
            ),
          );
        },
      ),
    );
  }
}
