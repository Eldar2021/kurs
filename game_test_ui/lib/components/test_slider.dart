import 'package:flutter/material.dart';
import 'package:game_test_ui/constants/app_color.dart';

class TestSlider extends StatelessWidget {
  const TestSlider({Key? key}) : super(key: key);

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
          value: 3,
          activeColor: AppColors.green,
          inactiveColor: AppColors.inActive,
          onChanged: (value) {},
        ),
      ),
    );
  }
}
