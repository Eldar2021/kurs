import 'package:flutter/material.dart';
import 'package:game_test_full/constants/app_color.dart';

class TestSlider extends StatelessWidget {
  const TestSlider({Key? key, required this.value}) : super(key: key);
  final int value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SliderTheme(
        data: SliderThemeData(
          trackHeight: 4.5,
          overlayShape: SliderComponentShape.noOverlay,
          thumbShape: SliderComponentShape.noThumb,
          trackShape: const RectangularSliderTrackShape(),
          // minThumbSeparation: 10,
        ),
        child: Slider(
          min: 0,
          max: 10,
          value: value.toDouble(),
          activeColor: AppColors.green,
          inactiveColor: AppColors.inActive,
          onChanged: (value) {},
        ),
      ),
    );
  }
}
