import 'package:booking_hotels/features/authentication/presentation/views/widgets/new_password_view_body.dart';
import 'package:flutter/material.dart';
class NewPasswordView extends StatelessWidget {
  const NewPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NewPasswordViewBody(),
    );
  }
}
