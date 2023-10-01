import 'package:booking_hotels/features/profile/presentation/views/widgets/profile_view_body.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/custom_app_bar.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: CustomAppBar(title: "Profile"),
      ),
      body: ProfileViewBody(),
    );
  }
}
