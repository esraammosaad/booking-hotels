import 'package:booking_hotels/constants.dart';
import 'package:booking_hotels/core/utils/styles.dart';
import 'package:flutter/material.dart';
import '../../../../../generated/assets.dart';
import 'custom_notification_button.dart';
import 'custom_notification_item.dart';
import 'custom_notification_text.dart';

class NotificationViewBody extends StatelessWidget {
  const NotificationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 23),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CustomNotificationText(text: "Today"),
                      Text(
                        "All Mark As Read",
                        style: Styles.textStyle16.copyWith(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                ),
                CustomNotificationItem(
                  borderColor: const Color(0x80000000),

                  color: Colors.transparent,

                  trailing: Image.asset(Assets.iconsNotificationView),
                  title: "Steigenberger Aqua",
                  subTitle:
                    "Today 12:00 pm",

                                  ),
                const SizedBox(
                  height: 14,
                ),
                CustomNotificationItem(
                  borderColor: const Color(0x80000000),
                  color: Colors.transparent,

                  trailing: Image.asset(Assets.iconsNotificationView),
                  title: "Steigenberger Aqua",
                  subTitle:
                    "Today 12:00 pm",
                                  ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 23),
                  child: CustomNotificationText(text: "Yesterday"),
                ),
                CustomNotificationItem(
                  borderColor: const Color(0x80000000),

                  color: Colors.transparent,

                  trailing: Image.asset(Assets.iconsNotificationView),
                  title: "Steigenberger Aqua",
                  subTitle:
                    "Today 12:00 pm",
                                   ),
                const SizedBox(
                  height: 14,
                ),
                CustomNotificationItem(
                  borderColor: const Color(0x80000000),

                  color: Colors.transparent,

                  trailing: Image.asset(Assets.iconsNotificationView),
                  title: "Steigenberger Aqua",
                  subTitle:
                    "Today 12:00 pm",

                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 23),
                  child: CustomNotificationText(text: "Last 7 Days"),
                ),
                CustomNotificationItem(
                  borderColor: const Color(0x80000000),

                  color: Colors.transparent,

                  trailing: Image.asset(Assets.iconsNotificationView),
                  title: "Steigenberger Aqua",
                  subTitle:
                    "Today 12:00 pm",

                ),
                const SizedBox(
                  height: 14,
                ),
                CustomNotificationItem(
                  borderColor: const Color(0x80000000),

                  color: Colors.transparent,
                  trailing: Image.asset(Assets.iconsNotificationView),
                  title: "Steigenberger Aqua",
                  subTitle:
                    "Today 12:00 pm",
                                   ),
              ],
            ),
          ),
          const CustomNotificationButton()
        ],
      ),
    );
  }
}
