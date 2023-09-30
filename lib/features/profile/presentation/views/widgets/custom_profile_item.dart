import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../generated/assets.dart';

class CustomProfileItem extends StatelessWidget {
  const CustomProfileItem({
    super.key,
    required this.text,
    required this.onTap,
  });

  final String text;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      height: 54,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.black.withOpacity(0.05),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: Styles.textStyle20.copyWith(
                color: Colors.black.withOpacity(0.7),
              ),
            ),
            GestureDetector(
              onTap: onTap,
              child: Image.asset(Assets.iconsBackOutline),
            ),
          ],
        ),
      ),
    );
  }
}
