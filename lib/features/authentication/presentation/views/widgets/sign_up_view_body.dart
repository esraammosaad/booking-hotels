import 'package:booking_hotels/core/utils/styles.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:icons_plus/icons_plus.dart';
import '../../../../../core/utils/custom_decoration.dart';
import '../../../../../core/utils/routes.dart';
import '../../manager/auth_cubit/auth_cubit.dart';
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
              BlocListener<AuthCubit, AuthState>(
                  listener: (context, state) {
                    if (state is AuthSuccess) {
                      context.pushReplacement(AppRoutes.kAddInformationView);
                    } else if (state is AuthFailure) {
                      showAwesomeDialog(
                          context, state.dialogType, state.title, state.desc);
                    }
                  },
                  child: const CustomSignUpForm()),
              const SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 45),
                child: CustomTextSpan(
                    text: 'Already have an account?  ',
                    buttonText: 'sign in',
                    onTap: () => context.push(AppRoutes.kSignInView)),
              ),
              const SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () async {
                  // final LoginResult loginResult = await FacebookAuth.instance.login();
                  //
                  // // Create a credential from the access token
                  // final OAuthCredential facebookAuthCredential = FacebookAuthProvider.credential(loginResult.accessToken.token);
                  //
                  // // Once signed in, return the UserCredential
                  // return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
                },
                child: const CustomSignInContainer(
                    text: 'Continue with facebook',
                    icon: FaIcon(
                      FontAwesomeIcons.facebook,
                      size: 40,
                      color: Color(0xff1877F2),
                    )),
              ),
              GestureDetector(
                onTap: () async {
                  // Trigger the authentication flow
                  try {
                    final GoogleSignInAccount? googleUser =
                        await GoogleSignIn(scopes: ['profile', 'email'])
                            .signIn();

                    // Obtain the auth details from the request
                    final GoogleSignInAuthentication? googleAuth =
                        await googleUser?.authentication;

                    // Create a new credential
                    final credential = GoogleAuthProvider.credential(
                      accessToken: googleAuth?.accessToken,
                      idToken: googleAuth?.idToken,
                    );

                    // Once signed in, return the UserCredential
                    await FirebaseAuth.instance
                        .signInWithCredential(credential);
                    context.push(AppRoutes.kHomeView);
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
