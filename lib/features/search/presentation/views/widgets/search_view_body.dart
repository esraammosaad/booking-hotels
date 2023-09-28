import 'package:booking_hotels/constants.dart';
import 'package:booking_hotels/features/home/presentation/views/widgets/custom_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../generated/assets.dart';
import '../../../../home/data/models/hotel_model.dart';
import 'custom_search_card_item.dart';
import 'custom_search_item.dart';

class SearchViewBody extends StatefulWidget {
  const SearchViewBody({super.key});

  @override
  State<SearchViewBody> createState() => _SearchViewBodyState();
}

class _SearchViewBodyState extends State<SearchViewBody> {
  List<HotelModel> hotelList = [
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
    return ListView(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.05),
          child: CustomSearchBar(
            prefixIcon: GestureDetector(
              onTap: () {
                context.pop();
              },
              child: Image.asset(Assets.iconsBack),
            ),
            label: Text(
              'Search',
              style: Styles.textStyle20.copyWith(
                color: Colors.black.withOpacity(0.7),
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.05),
          child: Text(
            "Previous searches",
            style: Styles.textStyle20.copyWith(
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.4,
          child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return CustomSearchItem(
                image: hotelList[index].image,
                title: hotelList[index].hotelName,
                subTitle: hotelList[index].country,
              );
            },
            separatorBuilder: (context, index) => const SizedBox(height: 8),
            itemCount: hotelList.length,
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.05),
          child: Text(
            "Popular search",
            style: Styles.textStyle20.copyWith(
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) {
            return CustomSearchCardItem(
                image: Assets.imagesAman,
                hotelName: "Aman New York",
                country: "Aman New York",
                price: "Aman New York");
          },
        )
      ],
    );
  }
}
