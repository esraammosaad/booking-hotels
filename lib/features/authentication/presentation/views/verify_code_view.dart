import 'package:booking_hotels/features/authentication/presentation/views/widgets/verify_code_view_body.dart';
import 'package:flutter/material.dart';

class VerifyCodeView extends StatelessWidget {
  const VerifyCodeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: VerifyCodeViewBody(),
    );
  }
}
