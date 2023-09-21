import 'package:booking_hotels/constents.dart';
import 'package:booking_hotels/core/utils/styles.dart';
import 'package:booking_hotels/features/authentication/presentation/views/widgets/custom_text_form_field.dart';
import 'package:booking_hotels/core/utils/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:icons_plus/icons_plus.dart';
import '../../../../../core/utils/custom_decoration.dart';
import 'custom_forget_password_widget.dart';
import 'custom_signin_container.dart';
import 'custom_text_span.dart';

class SignInViewBody extends StatelessWidget {
  const SignInViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 36.0, top: 55),
            child: Text(
              'Login To your Account',
              style: Styles.textStyle32,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 22.0, left: 23, right: 24, bottom: 24),
            child: CustomTextFormField(hintText: 'Email', onSave: (value) {}),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 23, right: 24, bottom: 7),
            child:
                CustomTextFormField(hintText: 'Password', onSave: (value) {}),
          ),
          const CustomForgetPasswordWidget(),
          CustomButton(
              text: 'Sign in',
              onPressed: () {},
              textStyle: Styles.textStyle20.copyWith(color: Colors.white),
              color: kPrimaryColor),
          const SizedBox(
            height: 24,
          ),
          const CustomTextSpan(),
          const SizedBox(
            height: 50,
          ),
          const CustomSignInContainer(
              text: 'Continue with facebook',
              icon: FaIcon(
                FontAwesomeIcons.facebook,
                size: 40,
                color: Color(0xff1877F2),
              )),
          CustomSignInContainer(
            text: "Continue with google",
            icon: Logo(Logos.google),
          ),
          const CustomDecoration()


        ],
      ),
    );
  }
}







