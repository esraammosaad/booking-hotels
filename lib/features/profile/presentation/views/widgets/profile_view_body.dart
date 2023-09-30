import 'package:booking_hotels/constants.dart';
import 'package:booking_hotels/core/utils/styles.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../../../../../core/utils/routes.dart';
import '../../../../../generated/assets.dart';
import 'custom_profile_item.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 45,
          ),
          Center(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(1, 2),
                        blurRadius: 4,
                        color: Colors.black.withOpacity(0.25),
                      )
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 14),
                    child: Center(
                      child: Text(
                        "Youssef Elgammal",
                        style: Styles.textStyle20.copyWith(
                          color: Colors.black.withOpacity(0.7),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: -30,
                  left: MediaQuery.of(context).size.width * 0.3,
                  child: Image.asset(Assets.imagesUser),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 23,
          ),
          CustomProfileItem(
            text: "Edit Profile",
            onTap: () {
              context.push(AppRoutes.kEditProfileView);
            },
          ),
          const SizedBox(
            height: 14,
          ),
          CustomProfileItem(
            text: "Payment",
            onTap: () {},
          ),
          const SizedBox(
            height: 14,
          ),
          CustomProfileItem(
            text: "Help & support",
            onTap: () {},
          ),
          const SizedBox(
            height: 14,
          ),
          CustomProfileItem(
            text: "Notification",
            onTap: () {
              context.push(AppRoutes.kNotificationView);
            },
          ),
          const SizedBox(
            height: 14,
          ),
          CustomProfileItem(
            text: "Favorite",
            onTap: () {
              context.push(AppRoutes.kFavouriteView);
            },
          ),
          const SizedBox(
            height: 14,
          ),
          CustomProfileItem(
            text: "Give Feedback",
            onTap: () {},
          ),
          const SizedBox(
            height: 14,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.black.withOpacity(0.05),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                  onTap: () async {
                    await FirebaseAuth.instance.signOut();
                    GoogleSignIn googleSignIn = GoogleSignIn();
                    googleSignIn.disconnect();
                    context.push(
                      AppRoutes.kSignUpView,
                    );
                  },
                  child: Text(
                    "Log out",
                    style: Styles.textStyle20.copyWith(
                      color: const Color(0xffFF3D00),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }
}
