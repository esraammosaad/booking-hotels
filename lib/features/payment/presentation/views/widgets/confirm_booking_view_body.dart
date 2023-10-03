import 'package:booking_hotels/constants.dart';
import 'package:booking_hotels/core/utils/custom_button.dart';
import 'package:booking_hotels/core/utils/routes.dart';
import 'package:booking_hotels/core/utils/styles.dart';
import 'package:booking_hotels/features/payment/presentation/views/widgets/custom_price_details_container.dart';
import 'package:booking_hotels/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../notification/presentation/views/widgets/custom_notification_item.dart';
import 'custom_confirm_booking_row.dart';
import 'custom_payment_method_container.dart';

class ConfirmBookingViewBody extends StatelessWidget {
  const ConfirmBookingViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const CustomConfirmBookingRow(),
        const SizedBox(
          height: 24,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              CustomNotificationItem(
                borderColor: kFieldColor,
                color: kFieldColor,
                trailing: Text(
                  'Edit',
                  style: Styles.textStyle20.copyWith(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline,
                      decorationColor: kPrimaryColor),
                ),
                title: "Dates",
                subTitle: "30 Sep - 5 Oct",
              ),
              const SizedBox(
                height: 14,
              ),
              CustomNotificationItem(
                borderColor: kFieldColor,
                color: kFieldColor,
                trailing: Text(
                  'Edit',
                  style: Styles.textStyle20.copyWith(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline,
                      decorationColor: kPrimaryColor),
                ),
                title: "Guests",
                subTitle: "3 Guests",
              ),
              const SizedBox(
                height: 14,
              ),
              const CustomPriceDetailsContainer(),
              const SizedBox(
                height: 14,
              ),
              const CustomPaymentMethodContainer(),
              const SizedBox(
                height: 38,
              ),
              CustomButton(
                  text: 'Next',
                  onPressed: () {
                    context.push(AppRoutes.kPaymentView);
                  },
                  textStyle: Styles.textStyle20.copyWith(color: Colors.white),
                  color: kPrimaryColor,
                  padding: 0),
              const SizedBox(
                height: 24,
              )
            ],
          ),
        ),
      ],
    );
  }
}
