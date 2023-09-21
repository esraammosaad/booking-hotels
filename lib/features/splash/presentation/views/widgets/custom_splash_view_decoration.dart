import 'package:booking_hotels/generated/assets.dart';
import 'package:flutter/material.dart';
class CustomSplashViewDecoration extends StatelessWidget {
  const CustomSplashViewDecoration({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height * 0.27,
              child: Image.asset(Assets.imagesEllipse2)),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.23,
            child: Image.asset(Assets.imagesEllipse1),
          )
        ],
      ),
    );
  }
}