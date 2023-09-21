import 'package:booking_hotels/constents.dart';
import 'package:booking_hotels/core/utils/routes.dart';
import 'package:booking_hotels/core/utils/styles.dart';
import 'package:booking_hotels/core/utils/custom_button.dart';
import 'package:booking_hotels/features/splash/presentation/views/widgets/custom_page_indicator.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'custom_onBoarding_view_description.dart';
import 'custom_onBoarding_view_image.dart';
import 'custom_onBoarding_view_text.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody(
      {Key? key,
      required this.text,
      required this.image,
      required this.onPressed})
      : super(key: key);
  final String text;
  final String image;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomOnBoardingViewImage(image: image),
          const SizedBox(
            height: 52,
          ),
          CustomOnBoardingViewText(text: text),
          const SizedBox(
            height: 26,
          ),
          const CustomOnBoardingViewDescription(),
          const SizedBox(
            height: 42,
          ),
          const CustomPageIndicator(),
          const SizedBox(
            height: 42,
          ),
          CustomButton(
            text: 'Next',
            onPressed: onPressed,
            textStyle: Styles.textStyle20
                .copyWith(color: Colors.white, fontWeight: FontWeight.w700),
            color: kPrimaryColor,
          ),
          const SizedBox(
            height: 13,
          ),
          CustomButton(
            text: 'Skip',
            onPressed: () {
              context.go(AppRoutes.kSignInView,);
            },
            textStyle: Styles.textStyle20
                .copyWith(color: kPrimaryColor, fontWeight: FontWeight.w700),
            color: kSecondaryColor,
          ),
          const SizedBox(
            height: 79,
          ),
        ],
      ),
    );
  }
}
