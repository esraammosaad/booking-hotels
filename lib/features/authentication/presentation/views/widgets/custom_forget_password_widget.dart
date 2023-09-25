import 'package:booking_hotels/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';

class CustomForgetPasswordWidget extends StatelessWidget {
  const CustomForgetPasswordWidget({
    this.emailController,
    super.key,
  });

  final TextEditingController? emailController;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: const EdgeInsets.only(right: 24.0, bottom: 29),
        child: GestureDetector(
          onTap: () async {
            await FirebaseAuth.instance
                .sendPasswordResetEmail(email: emailController!.text);
            //context.push(AppRoutes.kForgetPasswordView);
          },
          child: Text(
            'forget your password?',
            textAlign: TextAlign.center,
            style: Styles.textStyle20.copyWith(
              color: kTextColor,
              fontWeight: FontWeight.w500,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ),
    );
  }
}
