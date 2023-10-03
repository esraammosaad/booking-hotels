import 'package:flutter/material.dart';
import 'custom_details_column.dart';
import 'custom_image_container.dart';
class CustomConfirmBookingRow extends StatelessWidget {
  const CustomConfirmBookingRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.only(left: 23.0,right: 36),
      child: Row(
        children: [
          CustomImageContainer(),
          SizedBox(
            width: 18,
          ),
          CustomDetailsColumn()
        ],
      ),
    );
  }
}