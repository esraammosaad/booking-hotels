import 'package:booking_hotels/constants.dart';
import 'package:booking_hotels/core/utils/custom_decoration.dart';
import 'package:booking_hotels/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'custom_back_icon.dart';
import 'custom_forget_password_form.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  const ForgetPasswordViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                const CustomBackIcon(),
                const SizedBox(
                  height: 58,
                ),
                Text(
                  'Forget Password?',
                  style: Styles.textStyle24,
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 19.0),
                  child: Text(
                    'Enter Your Email We Will Send Your Verification Code Via Email',
                    textAlign: TextAlign.center,
                    style: Styles.textStyle20.copyWith(color: kTextColor),
                  ),
                ),
                const CustomForgetPasswordForm()
              ],
            ),
          ),
          const SliverFillRemaining(
            fillOverscroll: false,
            hasScrollBody: false,
            child: SizedBox(
              height: 20,
            ),
          ),
          const SliverToBoxAdapter(
            child: CustomDecoration(),
          )
        ],
      ),
    );
  }
}
