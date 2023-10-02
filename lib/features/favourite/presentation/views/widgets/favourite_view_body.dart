import 'package:flutter/material.dart';
import '../../../../../generated/assets.dart';
import '../../../../home/data/models/hotel_model.dart';
import '../../../../search/presentation/views/widgets/custom_search_card_item.dart';

class FavouriteViewBody extends StatefulWidget {
  const FavouriteViewBody({super.key});

  @override
  State<FavouriteViewBody> createState() => _FavouriteViewBodyState();
}

class _FavouriteViewBodyState extends State<FavouriteViewBody> {
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
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.06, vertical: 14),
        child: GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 10,
            childAspectRatio: 0.7,
          ),
          itemCount: hotelList.length,
          itemBuilder: (context, index) {
            return CustomSearchCardItem(
              favouriteImage: Assets.iconsFavouriteView,
              image: hotelList[index].image,
              hotelName: hotelList[index].hotelName,
              country: hotelList[index].country,
              price: hotelList[index].price,
            );
          },
        ),
      ),
    );
  }
}
