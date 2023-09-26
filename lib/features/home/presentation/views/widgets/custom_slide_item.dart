import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../generated/assets.dart';

class CustomSlideItem extends StatelessWidget {
  const CustomSlideItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          Assets.imagesSlide,
          fit: BoxFit.fill,
        ),
        Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.015,
            right: MediaQuery.of(context).size.width * 0.04,
            left: MediaQuery.of(context).size.width * 0.04,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(Assets.iconsFavourite),
                ],
              ),
              Text(
                "The west Maldives hotel",
                style: Styles.textStyle18.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                "Maldives South Asia",
                style: Styles.textStyle12.copyWith(
                  color: Colors.white.withOpacity(0.7),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "\$50 per Night",
                style: Styles.textStyle12.copyWith(color: Colors.white),
              ),
            ],
          ),
        )
      ],
    );
  }
}
//
// left: MediaQuery.of(context).size.width * 0.02,
// top: MediaQuery.of(context).size.height * 0.1,
