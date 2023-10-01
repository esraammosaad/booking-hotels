import 'package:booking_hotels/features/notification/presentation/views/widgets/notificatin_view_body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/routes.dart';
import '../../../../core/utils/styles.dart';
import '../../../../generated/assets.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

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
          "Notification",
          style: Styles.textStyle24,
        ),
      ),
      body: const NotificationViewBody(),
    );
  }
}
