import 'package:booking_hotels/core/utils/styles.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:icons_plus/icons_plus.dart';
import '../../../../../core/utils/custom_decoration.dart';
import 'custom_sign_in_container.dart';
import 'custom_sign_up_form.dart';
import 'custom_text_span.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({Key? key}) : super(key: key);

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
                  'Create your Account',
                  style: Styles.textStyle32,
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              const CustomSignUpForm(),
              const SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 45),
                child: CustomTextSpan(
                    text: 'Already have an account?  ',
                    buttonText: 'sign in',
                    onTap: () => context.pop()),
              ),
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
              GestureDetector(
                onTap: () async {
                  // Trigger the authentication flow
                  try {
                    final GoogleSignInAccount? googleUser =
                        await GoogleSignIn().signIn();

                    // Obtain the auth details from the request
                    final GoogleSignInAuthentication? googleAuth =
                        await googleUser?.authentication;

                    // Create a new credential
                    final credential = GoogleAuthProvider.credential(
                      accessToken: googleAuth?.accessToken,
                      idToken: googleAuth?.idToken,
                    );

                    // Once signed in, return the UserCredential
                    await FirebaseAuth.instance.signInWithCredential(credential);
                  } on FirebaseException catch (e) {
                    debugPrint(e.code);
                  }
                },
                child: CustomSignInContainer(
                  text: "Continue with google",
                  icon: Logo(Logos.google),
                ),
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
