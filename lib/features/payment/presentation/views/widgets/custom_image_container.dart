import 'package:flutter/material.dart';

import '../../../../../generated/assets.dart';
class CustomImageContainer extends StatelessWidget {
  const CustomImageContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.45,
      child: AspectRatio(
        aspectRatio: 1.3,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: const DecorationImage(
                image: AssetImage(
                  Assets.imagesUnsplash,
                ),
                fit: BoxFit.contain,
              )),
        ),
      ),
    );
  }
}
