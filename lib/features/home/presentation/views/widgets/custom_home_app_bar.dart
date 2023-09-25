import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../generated/assets.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
      child: Row(
        children: [
          CircleAvatar(
            child: Image.asset(Assets.imagesUser),
          ),
          const SizedBox(
            width: 3,
          ),
          Column(
            children: [
              Text(
                "Hi, Joe",
                style: Styles.textStyle16.copyWith(
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              Row(
                children: [
                  Image.asset(Assets.iconsLocation),
                  const SizedBox(
                    width: 6,
                  ),
                  Text(
                    "Egypt",
                    style: Styles.textStyle12.copyWith(
                      color: Colors.black.withOpacity(0.7),
                    ),
                  )
                ],
              )
            ],
          ),
          const Spacer(),
          Image.asset(Assets.iconsNotification)
        ],
      ),
    );
  }
}
