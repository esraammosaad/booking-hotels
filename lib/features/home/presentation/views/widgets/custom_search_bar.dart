import 'package:flutter/material.dart';
import 'custom_search_text_field.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
    this.onTap,
    this.enabled,
    this.onChanged,
    required this.label,
    this.prefixIcon,
  });

  final void Function()? onTap;
  final bool? enabled;
  final void Function(String)? onChanged;
  final Widget label;
  final Widget? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 2),
            color: Colors.black.withOpacity(0.25),
            blurRadius: 4,
            blurStyle: BlurStyle.normal,
          ),
        ],
      ),
      child: Card(
        margin: EdgeInsets.zero,
        color: Colors.white,
        shadowColor: Colors.black.withOpacity(0.25),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: CustomSearchTextField(
          prefixIcon: prefixIcon,
          label: label,
          onChanged: onChanged,
          onTap: onTap,
        ),
      ),
    );
  }
}
