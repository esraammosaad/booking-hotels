import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';

class CustomAnimationBuilder extends StatelessWidget {
  const CustomAnimationBuilder({
    super.key,
    required this.animationController,
    required this.slidingAnimation,
  });

  final AnimationController animationController;
  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: animationController,
        builder: (context, _) => SlideTransition(
            position: slidingAnimation,
            child: Text(
              'hotels',
              style: Styles.textStyle46,
            )));
  }
}
