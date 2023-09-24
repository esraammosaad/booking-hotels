import 'package:flutter/material.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {Key? key,
      required this.hintText,
      required this.onSave,
      required this.keyboardType,
      required this.textInputAction,
      required this.obscureText,
      this.controller,
      required this.validator})
      : super(key: key);

  final String hintText;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final bool obscureText;
  final void Function(String?) onSave;
  final TextEditingController? controller;
  final String? Function(String?) validator;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        cursorColor: kPrimaryColor,
        onSaved: onSave,
        keyboardType: keyboardType,
        textInputAction: textInputAction,
        validator: validator,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(top: 16, bottom: 16, left: 25),
          hintText: hintText,
          hintStyle: Styles.textStyle20.copyWith(
            color: const Color(0x80000000),
            fontWeight: FontWeight.w400,
          ),
          filled: true,
          fillColor: kFieldColor,
          border: buildOutlineInputBorder(
            const Color(0x0D000000),
          ),
          errorBorder: buildOutlineInputBorder(Colors.red),
          focusedErrorBorder: buildOutlineInputBorder(Colors.red),
          focusedBorder: buildOutlineInputBorder(kPrimaryColor),
          enabledBorder: buildOutlineInputBorder(
            const Color(0x0D000000),
          ),
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
