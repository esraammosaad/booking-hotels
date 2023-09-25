import 'package:flutter/material.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({
    super.key,
    required this.image,
    required this.name,
  });

  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image),
        const SizedBox(
          height: 5,
        ),
        Text(
          name,
          style: Styles.textStyle16.copyWith(
            color: kPrimaryColor,
            fontWeight: FontWeight.w600,
          ),
        )
      ],
    );
  }
}
