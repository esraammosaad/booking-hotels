import 'package:booking_hotels/features/splash/presentation/views/widgets/onBoarding_view_body.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({
    Key? key,
    required this.text,
    required this.image,
    required this.onPressed,
  }) : super(key: key);
  final String text;
  final String image;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnBoardingViewBody(
        text: text,
        image: image,
        onPressed: onPressed,
      ),
    );
  }
}
