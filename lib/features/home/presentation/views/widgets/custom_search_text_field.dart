import 'package:flutter/material.dart';
import '../../../../../constants.dart';
import '../../../../../generated/assets.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({
    super.key,
    this.onTap,
    this.onChanged,
    this.prefixIcon,
    required this.label,
  });

  final void Function()? onTap;
  final void Function(String)? onChanged;
  final Widget? prefixIcon;
  final Widget label;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onTap: onTap,
      onChanged: onChanged,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: kPrimaryColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: kPrimaryColor,
          ),
        ),
        prefixIcon: prefixIcon,
        suffixIcon: Image.asset(
          Assets.iconsSearch,
          height: 10,
          fit: BoxFit.scaleDown,
        ),
        label: label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: Color(0x80000000),
          ),
        ),
      ),
    );
  }
}
