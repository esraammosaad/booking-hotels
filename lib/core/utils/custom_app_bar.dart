import 'package:booking_hotels/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../generated/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 50,
      shadowColor: Colors.black,
      backgroundColor: Color(0xffFFFBFB),
      surfaceTintColor: Color(0xffFFFBFB),
      shape: const OutlineInputBorder(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(16),
          bottomLeft: Radius.circular(16),
        ),
        borderSide: BorderSide(color: Colors.transparent),
      ),
      leading: GestureDetector(
        onTap: () {
          context.pop();
        },
        child: Image.asset(Assets.iconsBack),
      ),
      title: Text(
        title,
        style: Styles.textStyle24,
      ),
    );
  }
}
