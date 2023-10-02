import 'package:booking_hotels/core/utils/styles.dart';
import 'package:booking_hotels/features/payment/presentation/views/widgets/custom_payment_text_field.dart';
import 'package:booking_hotels/features/profile/presentation/views/widgets/custom_edit_profile_title.dart';
import 'package:flutter/material.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/custom_button.dart';

class PaymentViewBody extends StatelessWidget {
  const PaymentViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.05,
                vertical: MediaQuery.of(context).size.height * 0.03),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomEditProfileTitle(text: "Card Name"),
                const SizedBox(
                  height: 14,
                ),
                const CustomPaymentTextField(
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    hintText: "Card Name"),
                const SizedBox(
                  height: 26,
                ),
                const CustomEditProfileTitle(text: "Card Number"),
                const SizedBox(
                  height: 14,
                ),
                const CustomPaymentTextField(
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    hintText: "0000 0000 0000 0000"),
                const SizedBox(
                  height: 26,
                ),
                Row(
                  children: [
                    const Expanded(
                      child: Column(
                        children: [
                          CustomEditProfileTitle(text: "Expiration Date"),
                          SizedBox(
                            height: 14,
                          ),
                          CustomPaymentTextField(
                              keyboardType: TextInputType.datetime,
                              textInputAction: TextInputAction.next,
                              hintText: "MM/YY"),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.05,
                    ),
                    const Expanded(
                      child: Column(
                        children: [
                          CustomEditProfileTitle(text: "CVV"),
                          SizedBox(
                            height: 14,
                          ),
                          CustomPaymentTextField(
                              keyboardType: TextInputType.number,
                              textInputAction: TextInputAction.next,
                              hintText: "000"),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 28,
                ),
                Container(
                  width: double.infinity,
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.black.withOpacity(0.05)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomEditProfileTitle(text: "Price details"),
                      const SizedBox(
                        height: 14,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$50 *5 night",
                            style: Styles.textStyle16.copyWith(
                                color: Colors.black.withOpacity(0.7),
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "\$250",
                            style: Styles.textStyle16.copyWith(
                                color: Colors.black.withOpacity(0.7),
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Cleaning fee",
                            style: Styles.textStyle16.copyWith(
                                color: Colors.black.withOpacity(0.7),
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "\$10",
                            style: Styles.textStyle16.copyWith(
                                color: Colors.black.withOpacity(0.7),
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "service fee",
                            style: Styles.textStyle16.copyWith(
                                color: Colors.black.withOpacity(0.7),
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "\$10",
                            style: Styles.textStyle16.copyWith(
                                color: Colors.black.withOpacity(0.7),
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      Divider(
                        color: Colors.black.withOpacity(0.5),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomEditProfileTitle(text: "Total"),
                          CustomEditProfileTitle(text: "\$270"),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          CustomButton(
              text: "Pay",
              onPressed: () {},
              textStyle: Styles.textStyle20.copyWith(color: Colors.white),
              color: kPrimaryColor),
          const SizedBox(
            height: 14,
          )
        ],
      ),
    );
  }
}
