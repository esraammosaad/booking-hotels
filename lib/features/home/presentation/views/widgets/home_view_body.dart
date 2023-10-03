import 'package:booking_hotels/features/home/data/models/hotel_model.dart';
import 'package:booking_hotels/features/home/presentation/views/manager/home_cubit/home_cubit.dart';
import 'package:booking_hotels/features/home/presentation/views/widgets/CustomHomeViewSearchContainer.dart';
import 'package:booking_hotels/features/home/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/routes.dart';
import '../../../../../core/utils/styles.dart';
import '../../../data/models/country_model.dart';
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
  List<HotelModel> hotelList = [];
  List<CountryModel> countryList = [];

  @override
  void initState() {
    hotelList = BlocProvider.of<HomeCubit>(context).hotelList;
    countryList = BlocProvider.of<HomeCubit>(context).countryList;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const CustomHomeAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.05),
          child: CustomHomeViewSearchContainer(onTap: (){
            context.push(AppRoutes.kSearchView);

          }),
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
                item: hotelList[index],
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
              item: hotelList[index],

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
              item: hotelList[index],

            );
          },
          separatorBuilder: (context, index) => const SizedBox(height: 7),
          itemCount: 2,
        ),
        const SizedBox(
          height: 14,
        ),
      ],
    );
  }
}
