import 'package:booking_hotels/features/hotel_details/presentation/views/widgets/hotel_details_body.dart';
import 'package:flutter/material.dart';

class HotelDetailsView extends StatelessWidget {
  const HotelDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HotelDetailsBody(),
    );
  }
}
