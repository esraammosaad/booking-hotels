import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';

class CustomPaymentTextField extends StatelessWidget {
  const CustomPaymentTextField({super.key, required this.keyboardType, required this.textInputAction, required this.hintText});

  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: kPrimaryColor,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(
          top: 16,
          bottom: 16,
          left: 25,
        ),
        hintText: hintText,
        hintStyle: Styles.textStyle20.copyWith(
          color: Colors.black.withOpacity(0.5),
          fontWeight: FontWeight.w600,
        ),
        filled: true,
        fillColor: Colors.black.withOpacity(0.01),
        border: buildOutlineInputBorder(
          kPrimaryColor.withOpacity(0.5),
        ),
        errorBorder: buildOutlineInputBorder(Colors.red),
        focusedErrorBorder: buildOutlineInputBorder(Colors.red),
        focusedBorder: buildOutlineInputBorder(kPrimaryColor),
        enabledBorder: buildOutlineInputBorder(
          kPrimaryColor.withOpacity(0.5),
        ),
      ),
    );
  }
  OutlineInputBorder buildOutlineInputBorder(Color color) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color),
      borderRadius: BorderRadius.circular(8),
    );
  }
}
