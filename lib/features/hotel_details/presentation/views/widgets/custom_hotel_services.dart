import 'package:flutter/material.dart';
import '../../../../../generated/assets.dart';
import 'custom_hotel_details_about.dart';

class CustomHotelServices extends StatelessWidget {
  const CustomHotelServices({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Wrap(
      runSpacing: 5.0,
      spacing: 5.0,
      children: [
        CustomHotelDetailsAbout(
          icon: Assets.iconsFamily,
          text: "Family Romms",
          width: 179,
        ),
        CustomHotelDetailsAbout(
          icon: Assets.iconsPool,
          text: "Swimming Pool",
          width: 181,
        ),
        CustomHotelDetailsAbout(
          icon: Assets.iconsWifi,
          text: "Free WIfi",
          width: 130,
        ),
        CustomHotelDetailsAbout(
          icon: Assets.iconsParking,
          text: "Parking",
          width: 122,
        ),
        CustomHotelDetailsAbout(
          icon: Assets.iconsGym,
          text: "Gym",
          width: 103,
        ),
        CustomHotelDetailsAbout(
          icon: Assets.iconsSpa,
          text: "Spa",
          width: 97,
        ),
        CustomHotelDetailsAbout(
          icon: Assets.iconsCoffee,
          text: "Tea/Coffe",
          width: 146,
        ),
        CustomHotelDetailsAbout(
          icon: Assets.iconsRestaurant,
          text: "Restaurant",
          width: 150,
        ),
      ],
    );
  }
}
