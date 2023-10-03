import 'package:flutter/material.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../generated/assets.dart';
class CustomPaymentMethodContainer extends StatelessWidget {
  const CustomPaymentMethodContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      decoration: const BoxDecoration(color: kFieldColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Payment Method',
            style: Styles.textStyle20.copyWith(
                color: Colors.black, fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 27,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                Assets.paypal,
                width: MediaQuery.of(context).size.width * 0.2,
              ),
              Image.asset(Assets.visa,
                  width: MediaQuery.of(context).size.width * 0.2),
              Image.asset(Assets.mastercard,
                  width: MediaQuery.of(context).size.width * 0.2),
            ],
          )
        ],
      ),
    );
  }
}
