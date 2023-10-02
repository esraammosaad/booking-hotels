import 'package:booking_hotels/features/payment/presentation/views/widgets/confirm_booking_view_body.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/custom_app_bar.dart';

class ConfirmBookingView extends StatelessWidget {
  const ConfirmBookingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar:  PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: CustomAppBar(title: "Confirm Booking"),
      ),
      body: ConfirmBookingViewBody(),


    );
  }
}
