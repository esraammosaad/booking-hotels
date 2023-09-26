import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import '../../../../../constants.dart';
import 'custom_slide_item.dart';

class CustomSlider extends StatelessWidget {
  const CustomSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return const CustomSlideItem();
        },
        itemCount: 3,
        viewportFraction: 0.8,
        scale: 0.9,
        indicatorLayout: PageIndicatorLayout.SCALE,
        pagination: SwiperPagination(
          alignment: Alignment.bottomCenter,
          builder: DotSwiperPaginationBuilder(
              space: 4,
              color: const Color(0xff1E1E1E4D).withOpacity(0.3),
              activeColor: kPrimaryColor),
        ),
        control: SwiperControl(
          color: Colors.black.withOpacity(0.5),
        ),
      ),
    );
  }
}
