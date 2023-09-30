import 'package:flutter/material.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../generated/assets.dart';

class CustomEditProfileItem extends StatelessWidget {
  const CustomEditProfileItem({
    super.key,
    required this.hintText,
  });

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: MediaQuery.of(context).size.width * 0.85,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.05),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding:
            EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.06),
        child: TextField(
          cursorColor: kPrimaryColor,
          maxLines: 1,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: Styles.textStyle20,
            suffixIcon: Image.asset(Assets.iconsEdit),
          ),
        ),
      ),
    );
  }
}
