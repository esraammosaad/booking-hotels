import 'package:flutter/material.dart';

import '../../generated/assets.dart';
class CustomDecoration extends StatelessWidget {
  const CustomDecoration({
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
              child: Image.asset(Assets.imagesEllipse22)),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.22,
            child: Image.asset(Assets.imagesEllipse11),
          )
        ],
      ),
    );
  }
}