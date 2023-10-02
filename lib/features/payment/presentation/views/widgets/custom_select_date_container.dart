import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';
class CustomSelectDateContainer extends StatelessWidget {
  const CustomSelectDateContainer({
    super.key, required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        border: Border.all(
          color: kPrimaryColor,
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: Styles.textStyle20.copyWith(
              color: kPrimaryColor, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
