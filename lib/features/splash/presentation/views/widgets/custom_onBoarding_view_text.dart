import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
class CustomOnBoardingViewText extends StatelessWidget {
  const CustomOnBoardingViewText({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: SizedBox(
          width: MediaQuery.of(context).size.width ,
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: Styles.textStyle32,
          )),
    );
  }
}
