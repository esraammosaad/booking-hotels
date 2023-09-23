import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../../../../core/utils/routes.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
          onTap: () {
            GoogleSignIn googleSignIn = GoogleSignIn();
            googleSignIn.disconnect();
            context.push(AppRoutes.kSignUpView);
          },
          child: const Text("Sign out")),
    );
  }
}
