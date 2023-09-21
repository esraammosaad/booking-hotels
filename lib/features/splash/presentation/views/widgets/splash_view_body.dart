import 'package:booking_hotels/core/utils/routes.dart';
import 'package:booking_hotels/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'custom_animation_builder.dart';
import 'custom_splash_view_decoration.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    splashViewAnimation();
    navigationToSplashOneView();
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(
            flex: 5,
          ),
          Image.asset(Assets.imagesLogo1),
          CustomAnimationBuilder(
              animationController: animationController,
              slidingAnimation: slidingAnimation),
          const Spacer(),
          const CustomSplashViewDecoration(),
        ],
      ),
    );
  }

  void navigationToSplashOneView() {
    Future.delayed(
      const Duration(seconds: 10),
      () {
        context.go(AppRoutes.kPageView);
      },
    );
  }

  void splashViewAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidingAnimation = Tween(begin: const Offset(0, 2), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
  }
}
