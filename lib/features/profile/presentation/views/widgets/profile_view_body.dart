import 'package:booking_hotels/constants.dart';
import 'package:booking_hotels/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/routes.dart';
import '../../../../../generated/assets.dart';
import '../../../../help_and_support/presentation/manager/chat_cubit/chat_cubit.dart';
import 'custom_log_out_container.dart';
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
            onTap: () {
              BlocProvider.of<ChatCubit>(context).getMessage();
              context.push(AppRoutes.kHelpAndSupportView);
            },
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
          const CustomLogOutContainer(),
          const SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }
}


