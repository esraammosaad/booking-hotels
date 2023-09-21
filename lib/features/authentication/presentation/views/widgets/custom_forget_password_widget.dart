import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
class CustomForgetPasswordWidget extends StatelessWidget {
  const CustomForgetPasswordWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: const EdgeInsets.only(right: 24.0, bottom: 29),
          child: Text(
            'forget your password?',
            textAlign: TextAlign.center,
            style: Styles.textStyle20.copyWith(
                color: const Color(0xff4D4D4D),
                fontWeight: FontWeight.w500,
                decoration: TextDecoration.underline),
          ),
        ));
  }
}