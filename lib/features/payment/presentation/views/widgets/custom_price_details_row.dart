import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
class CustomPriceDetailsRow extends StatelessWidget {
  const CustomPriceDetailsRow({
    super.key, required this.text, required this.price,
  });
  final String text;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Styles.textStyle16.copyWith(
              color: Colors.black.withOpacity(0.7),
              fontWeight: FontWeight.w600),
        ),
        Text(
          price,
          style: Styles.textStyle16.copyWith(
              color: Colors.black.withOpacity(0.7),
              fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}