import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';

class CustomTextSpan extends StatelessWidget {
  const CustomTextSpan({
    super.key,
    required this.text,
    required this.buttonText,
    required this.onTap,
  });

  final String text;
  final String buttonText;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text.rich(
        TextSpan(
          text: text,
          style: Styles.textStyle20.copyWith(
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
          children: <InlineSpan>[
            TextSpan(
              recognizer: TapGestureRecognizer()..onTap = onTap,
              text: buttonText,
              style: Styles.textStyle20.copyWith(
                fontWeight: FontWeight.w500,
                color: kPrimaryColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
