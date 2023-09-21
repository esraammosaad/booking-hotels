import 'package:booking_hotels/features/authentication/presentation/views/widgets/signin_view_body.dart';
import 'package:flutter/material.dart';

class SignInView extends StatelessWidget {
  const SignInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: true,

      body: SignInViewBody(),
    );
  }
}
