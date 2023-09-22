import 'package:booking_hotels/core/utils/routes.dart';
import 'package:booking_hotels/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_plus/icons_plus.dart';
import '../../../../../core/utils/custom_decoration.dart';
import 'custom_sign_in_form.dart';
import 'custom_sign_in_container.dart';
import 'custom_text_span.dart';

class SignInViewBody extends StatelessWidget {
  const SignInViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
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
              const CustomSignInForm(),
              const SizedBox(
                height: 24,
              ),
              CustomTextSpan(
                  text: 'Don`t have an account?  ',
                  buttonText: 'sign Up',
                  onTap: () => context.push(AppRoutes.kSignUpView)),
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
    );
  }
}
