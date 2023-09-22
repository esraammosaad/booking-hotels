import 'package:booking_hotels/constants.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomPageIndicator extends StatelessWidget {
  const CustomPageIndicator({Key? key}) : super(key: key);
  static final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: 3,
      effect: const ExpandingDotsEffect(
        expansionFactor: 3,
        dotColor: Color(0x4D1E1E1E),
        activeDotColor: kPrimaryColor,
        spacing: 8,
        dotHeight: 10,
        dotWidth: 10,
      ),
      onDotClicked: (index) => controller.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.easeInExpo),
    );
  }
}
