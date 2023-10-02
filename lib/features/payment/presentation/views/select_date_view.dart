import 'package:booking_hotels/features/payment/presentation/views/widgets/select_date_view_body.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/custom_app_bar.dart';

class SelectDateView extends StatelessWidget {
  const SelectDateView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
     appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: CustomAppBar(title: "Select Date"),
      ),
      body: SelectDateViewBody(),



    );
  }
}
