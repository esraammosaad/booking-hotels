import 'package:booking_hotels/features/help_and_support/presentation/views/widgets/help_and_support_view_body.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/custom_app_bar.dart';

class HelpAndSupportView extends StatelessWidget {
  const HelpAndSupportView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: CustomAppBar(title: "Help & Support"),
      ),
      body: HelpAndSupportViewBody(),
    );
  }
}
