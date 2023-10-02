import 'package:booking_hotels/features/payment/presentation/views/widgets/payment_view_body.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/custom_app_bar.dart';

class PaymentView extends StatelessWidget {
  const PaymentView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: CustomAppBar(title: "Payment Details"),
      ),
      body: PaymentViewBody(),
    );
  }
}
