import 'package:booking_hotels/features/home/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/routes.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../generated/assets.dart';
import '../../../data/models/country_model.dart';
import '../../../data/models/hotel_model.dart';
import 'custom_card_item.dart';
import 'custom_list_view_item.dart';
import 'custom_search_bar.dart';
import 'custom_slider.dart';
import 'custom_title.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  List<CountryModel> countryList = [
    CountryModel(
      image: Assets.imagesEgypt,
      name: "Egypt",
    ),
    CountryModel(
      image: Assets.imagesNyork,
      name: "Nyork",
    ),
    CountryModel(
      image: Assets.imagesIndea,
      name: "indea",
    ),
    CountryModel(
      image: Assets.imagesDubai,
      name: "Dubai",
    ),
  ];

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
        const CustomHomeAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.05),
          child: CustomSearchBar(
            onTap: () {
              context.push(AppRoutes.kSearchView);
            },
            label: Text(
              'search here...',
              style: Styles.textStyle20.copyWith(
                color: Colors.black.withOpacity(0.5),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
          child: SizedBox(
            height: 100,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return const SizedBox(
                  width: 33,
                );
              },
              itemCount: countryList.length,
              itemBuilder: (context, index) => CustomListViewItem(
                image: countryList[index].image,
                name: countryList[index].name,
              ),
            ),
          ),
        ),
        CustomTitle(
          title: "Popular",
          seeAll: "See All",
          onTap: () {},
        ),
        const SizedBox(
          height: 14,
        ),
        const CustomSlider(),
        CustomTitle(
          title: "Recommended",
          seeAll: "See All",
          onTap: () {
            context.push(AppRoutes.kRecommendedView);
          },
        ),
        const SizedBox(
          height: 14,
        ),
        GestureDetector(
          onTap: () {
            context.push(AppRoutes.kHotelDetailsView);
          },
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
            itemCount: 2,
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        CustomTitle(
          title: "Resently booked",
          seeAll: "See All",
          onTap: () {},
        ),
        const SizedBox(
          height: 14,
        ),
        ListView.separated(
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
          itemCount: 3,
        ),
        const SizedBox(
          height: 24,
        ),
        CustomTitle(
          title: "For You",
          seeAll: "See All",
          onTap: () {},
        ),
        const SizedBox(
          height: 14,
        ),
        ListView.separated(
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
          itemCount: 2,
        ),
        const SizedBox(
          height: 14,
        ),
        // Center(
        //   child: GestureDetector(
        //     onTap: () async {
        //       await FirebaseAuth.instance.signOut();
        //       GoogleSignIn googleSignIn = GoogleSignIn();
        //       googleSignIn.disconnect();
        //       context.push(
        //         AppRoutes.kSignUpView,
        //       );
        //     },
        //     child: const Text("Sign out"),
        //   ),
        // ),
      ],
    );
  }
}
