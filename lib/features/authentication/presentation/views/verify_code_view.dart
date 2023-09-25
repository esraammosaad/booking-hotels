import 'package:booking_hotels/features/authentication/presentation/views/widgets/verify_code_view_body.dart';
import 'package:flutter/material.dart';

class VerifyCodeView extends StatelessWidget {
  const VerifyCodeView({
    Key? key,
    required this.phone,
  }) : super(key: key);
  final String phone;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: VerifyCodeViewBody(phone: phone),
    );
  }
}
