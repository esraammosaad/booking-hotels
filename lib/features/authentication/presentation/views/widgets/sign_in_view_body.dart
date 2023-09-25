import 'package:booking_hotels/core/utils/routes.dart';
import 'package:booking_hotels/core/utils/styles.dart';
import 'package:booking_hotels/features/authentication/presentation/manager/auth_cubit/auth_cubit.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:google_sign_in/google_sign_in.dart';
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
              BlocListener<AuthCubit, AuthState>(
                listener: (context, state) {
                  if (state is AuthSuccess) {
                    context.push(AppRoutes.kHomeView);
                  } else if (state is AuthFailure) {
                    showAwesomeDialog(
                      context,
                      state.dialogType,
                      state.title,
                      state.desc,
                    );
                  }
                },
                child: const CustomSignInForm(),
              ),
              const SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 45),
                child: CustomTextSpan(
                  text: 'Don`t have an account?  ',
                  buttonText: 'sign Up',
                  onTap: () => context.push(AppRoutes.kSignUpView),
                ),
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
              GestureDetector(
                onTap: () {
                  context.push(AppRoutes.kForgetPasswordView);
                },
                child: const CustomSignInContainer(
                  text: 'Continue with phone',
                  icon: FaIcon(
                    FontAwesomeIcons.phone,
                    size: 40,
                    color: Color(0xff1877F2),
                  ),
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
