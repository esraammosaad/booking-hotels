import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class CustomNotificationText extends StatelessWidget {
  const CustomNotificationText({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Styles.textStyle20.copyWith(
        color: Colors.black.withOpacity(0.8),
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
