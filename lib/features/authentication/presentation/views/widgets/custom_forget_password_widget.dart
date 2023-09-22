import 'package:booking_hotels/constants.dart';
import 'package:booking_hotels/core/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/styles.dart';
class CustomForgetPasswordWidget extends StatelessWidget {
  const CustomForgetPasswordWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: const EdgeInsets.only(right: 24.0, bottom: 29),
          child: GestureDetector(
            onTap: (){
              context.push(AppRoutes.kForgetPasswordView);
            },
            child: Text(
              'forget your password?',
              textAlign: TextAlign.center,
              style: Styles.textStyle20.copyWith(
                  color: kTextColor,
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.underline),
            ),
          ),
        ));
  }
}