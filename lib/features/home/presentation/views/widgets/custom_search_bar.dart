import 'package:flutter/material.dart';
import 'custom_search_text_field.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
    this.onTap,
    this.enabled,
    this.onChanged,
  });

  final void Function()? onTap;
  final bool? enabled;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.05),
      child: SizedBox(
        height: 50,
        child: CustomSearchTextField(
          onChanged: onChanged,
          onTap: onTap,
        ),
      ),
    );
  }
}
