import 'package:flutter/material.dart';
import '../../../../profile/presentation/views/widgets/custom_edit_profile_title.dart';
import 'custom_price_details_row.dart';

class CustomPriceDetailsContainer extends StatelessWidget {
  const CustomPriceDetailsContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding:
      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.black.withOpacity(0.05)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomEditProfileTitle(text: "Price details"),
          const SizedBox(
            height: 14,
          ),
          const CustomPriceDetailsRow(text: "\$50 *5 night",price: "\$250"),
          const SizedBox(
            height: 14,
          ),
          const CustomPriceDetailsRow(text: "Cleaning fee",price: "\$10"),

          const SizedBox(
            height: 14,
          ),
          const CustomPriceDetailsRow(text: "service fee",price: "\$10"),

          const SizedBox(
            height: 14,
          ),
          Divider(
            color: Colors.black.withOpacity(0.5),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomEditProfileTitle(text: "Total"),
              CustomEditProfileTitle(text: "\$270"),
            ],
          )
        ],
      ),
    );
  }
}

