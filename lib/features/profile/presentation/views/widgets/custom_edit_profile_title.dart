import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class CustomEditProfileTitle extends StatelessWidget {
  const CustomEditProfileTitle({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
      text,
      style: Styles.textStyle20.copyWith(
        color: Colors.black,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}