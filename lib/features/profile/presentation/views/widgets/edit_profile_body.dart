import 'package:booking_hotels/generated/assets.dart';
import 'package:flutter/material.dart';

class EditProfileBody extends StatelessWidget {
  const EditProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 23,
          ),
          Center(
            child: Image.asset(Assets.imagesUser),
          )
        ],
      ),
    );
  }
}
