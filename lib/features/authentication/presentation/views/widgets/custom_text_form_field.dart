import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {Key? key, required this.hintText, required this.onSave})
      : super(key: key);

  final String hintText;
  final void Function(String?) onSave;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextFormField(
        cursorColor: kPrimaryColor,
        onSaved: onSave,
        validator: (value) {
          if (value!.isEmpty) {
            return 'please enter a valid value';
          }
          return null;
        },
        decoration: InputDecoration(




          contentPadding: const EdgeInsets.only(top: 16, bottom: 16, left: 25),
          hintText: hintText,
          hintStyle: Styles.textStyle20.copyWith(
              color: const Color(0x80000000), fontWeight: FontWeight.w400),
          filled: true,
          fillColor:  kFieldColor,
          border: buildOutlineInputBorder(const Color(0x0D000000)),
          errorBorder: buildOutlineInputBorder(Colors.red),
          focusedErrorBorder: buildOutlineInputBorder(Colors.red),
          focusedBorder: buildOutlineInputBorder(kPrimaryColor),
          enabledBorder: buildOutlineInputBorder(const Color(0x0D000000)),
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
