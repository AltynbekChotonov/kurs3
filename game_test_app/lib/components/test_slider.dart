import 'package:flutter/material.dart';
import 'package:game_test_app/constants/app_color.dart';

class TestSlider extends StatelessWidget {
  const TestSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: SliderTheme(
        data: SliderThemeData(
          // trackHeight: 4.5,
          trackShape: const RectangularSliderTrackShape(),
          overlayShape: SliderComponentShape.noOverlay,
          thumbShape: SliderComponentShape.noThumb,
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
