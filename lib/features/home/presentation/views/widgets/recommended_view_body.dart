import 'package:flutter/material.dart';
import '../../../../../generated/assets.dart';
import '../../../data/models/hotel_model.dart';
import 'custom_card_item.dart';

class RecommendedViewBody extends StatefulWidget {
  const RecommendedViewBody({super.key});

  @override
  State<RecommendedViewBody> createState() => _RecommendedViewBodyState();
}

class _RecommendedViewBodyState extends State<RecommendedViewBody> {
  final List<HotelModel> hotelList = [
    HotelModel(
      image: Assets.imagesAman,
      hotelName: "Aman New York",
      country: "New York, USA",
      price: "\$50",
    ),
    HotelModel(
      image: Assets.imagesLuxury,
      hotelName: "luxury Resort Hotel",
      country: "Grand Hyatt Dubai",
      price: "\$80",
    ),
    HotelModel(
      image: Assets.imagesSteigenberger,
      hotelName: "Steigenberger Aqua",
      country: "Hurghada, Egypt",
      price: "\$20",
    ),
    HotelModel(
      image: Assets.imagesSonsta,
      hotelName: "Sonsta Hotel,Cairo",
      country: "Cairo, Egypt",
      price: "\$99",
    ),
    HotelModel(
      image: Assets.imagesAman,
      hotelName: "Aman New York",
      country: "New York, USA",
      price: "\$50",
    ),
    HotelModel(
      image: Assets.imagesLuxury,
      hotelName: "luxury Resort Hotel",
      country: "Grand Hyatt Dubai",
      price: "\$80",
    ),
    HotelModel(
      image: Assets.imagesSteigenberger,
      hotelName: "Steigenberger Aqua",
      country: "Hurghada, Egypt",
      price: "\$20",
    ),
    HotelModel(
      image: Assets.imagesSonsta,
      hotelName: "Sonsta Hotel,Cairo",
      country: "Cairo, Egypt",
      price: "\$99",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14),
        child: ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return CustomCardItem(
              image: hotelList[index].image,
              hotelName: hotelList[index].hotelName,
              country: hotelList[index].country,
              price: hotelList[index].price,
            );
          },
          separatorBuilder: (context, index) => const SizedBox(height: 7),
          itemCount: hotelList.length,
        ),
      ),
    );
  }
}
