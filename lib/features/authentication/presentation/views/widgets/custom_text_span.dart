import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../../../../constents.dart';
import '../../../../../core/utils/styles.dart';
class CustomTextSpan extends StatelessWidget {
  const CustomTextSpan({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 72.0),
      child: Text.rich(TextSpan(
          text: 'Don`t have an account?  ',
          style: Styles.textStyle20
              .copyWith(fontWeight: FontWeight.w500, color: Colors.black),
          children: <InlineSpan>[
            TextSpan(
                recognizer: TapGestureRecognizer()
                  ..onTap = () => print('object'),
                text: 'sign Up',
                style: Styles.textStyle20.copyWith(
                    fontWeight: FontWeight.w500, color: kPrimaryColor))
          ])),
    );
  }
}