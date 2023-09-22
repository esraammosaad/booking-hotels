import 'package:booking_hotels/features/authentication/presentation/views/widgets/sign_up_view_body.dart';
import 'package:flutter/material.dart';
class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(

      body: SignUpViewBody(),
    );
  }
}
