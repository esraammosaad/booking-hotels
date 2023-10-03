import 'package:booking_hotels/features/home/presentation/views/manager/home_cubit/home_cubit.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../constants.dart';
import '../../../data/models/hotel_model.dart';
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
          return  CustomSlideItem(item: BlocProvider.of<HomeCubit>(context).hotelList[index],);
        },
        itemCount: 3,
        viewportFraction: 0.8,
        scale: 0.9,
        indicatorLayout: PageIndicatorLayout.SCALE,
        pagination: SwiperPagination(
          alignment: Alignment.bottomCenter,
          builder: DotSwiperPaginationBuilder(
              space: 4,
              color: const Color(0xff1e1e1e4d).withOpacity(0.3),
              activeColor: kPrimaryColor),
        ),
        control: SwiperControl(
          color: Colors.black.withOpacity(0.5),
        ),
      ),
    );
  }
}
