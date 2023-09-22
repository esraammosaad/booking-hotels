import 'package:booking_hotels/features/splash/presentation/views/onBoarding_view.dart';
import 'package:booking_hotels/features/splash/presentation/views/widgets/custom_page_indicator.dart';
import 'package:booking_hotels/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/routes.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        onPageChanged: (index) {},
        controller: CustomPageIndicator.controller,
        children: [
          OnBoardingView(
            image: Assets.imagesSplashOne,
            text: 'Enjoy hassle free booking with Hotels',
            onPressed: () {
              CustomPageIndicator.controller.nextPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInExpo);
            },
          ),
          OnBoardingView(
            image: Assets.imagesSplashTwo,
            text: 'Home is where you book it;)',
            onPressed: () {
              CustomPageIndicator.controller.nextPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInExpo);
            },
          ),
          OnBoardingView(
            image: Assets.imagesSplashThree,
            text: 'Top hotels with great deals and more',
            onPressed: () {
              context.push(AppRoutes.kSignInView);
            },
          ),
        ],
      ),
    );
  }
}
