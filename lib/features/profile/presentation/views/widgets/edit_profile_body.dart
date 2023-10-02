import 'package:booking_hotels/constants.dart';
import 'package:booking_hotels/core/utils/custom_button.dart';
import 'package:booking_hotels/core/utils/routes.dart';
import 'package:booking_hotels/core/utils/styles.dart';
import 'package:booking_hotels/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'custom_edit_profike_item.dart';
import 'custom_edit_profile_title.dart';

class EditProfileBody extends StatelessWidget {
  const EditProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 24,
          ),
          Center(
            child: Image.asset(Assets.imagesUser),
          ),
          const SizedBox(
            height: 24,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomEditProfileTitle(text: "User Name"),
              SizedBox(
                height: 7,
              ),
              CustomEditProfileItem(hintText: "Youssef Elgammal"),
              SizedBox(
                height: 24,
              ),
              CustomEditProfileTitle(text: "Email"),
              SizedBox(
                height: 7,
              ),
              CustomEditProfileItem(hintText: "Youssef@gmail.com"),
              SizedBox(
                height: 24,
              ),
              CustomEditProfileTitle(text: "Password"),
              SizedBox(
                height: 7,
              ),
              CustomEditProfileItem(hintText: "******************"),
              SizedBox(
                height: 24,
              ),
              CustomEditProfileTitle(text: "Phone"),
              SizedBox(
                height: 7,
              ),
              CustomEditProfileItem(hintText: "01113124975"),
              SizedBox(
                height: 38,
              ),
            ],
          ),
          CustomButton(
            padding: 25,
              text: "continue",
              onPressed: () {
                context.push(AppRoutes.kHomeView);
              },
              textStyle: Styles.textStyle20.copyWith(color: Colors.white),
              color: kPrimaryColor),
          const SizedBox(
            height: 38,
          ),
        ],
      ),
    );
  }
}
