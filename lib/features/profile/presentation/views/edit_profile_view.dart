import 'package:booking_hotels/features/profile/presentation/views/widgets/edit_profile_body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/routes.dart';
import '../../../../core/utils/styles.dart';
import '../../../../generated/assets.dart';

class EditProfileView extends StatelessWidget {
  const EditProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            context.pop();
          },
          child: Image.asset(Assets.iconsBack),
        ),
        title: Text(
          "Edit Profile",
          style: Styles.textStyle24,
        ),
      ),
      body: const EditProfileBody(),
    );
  }
}
