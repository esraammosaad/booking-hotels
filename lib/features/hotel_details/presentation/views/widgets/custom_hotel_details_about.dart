import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';

class CustomHotelDetailsAbout extends StatelessWidget {
  const CustomHotelDetailsAbout({
    super.key,
    required this.icon,
    required this.text,
    required this.width,
  });

  final String icon;
  final String text;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.black.withOpacity(0.1),
      ),
      child: Row(
        children: [
          Image.asset(icon),
          const SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
