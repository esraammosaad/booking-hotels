import 'package:booking_hotels/features/notification/presentation/views/widgets/notificatin_view_body.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/custom_app_bar.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: CustomAppBar(title: "Notification"),
      ),
      body: NotificationViewBody(),
    );
  }
}
