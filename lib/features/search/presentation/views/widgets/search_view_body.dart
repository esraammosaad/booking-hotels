import 'package:booking_hotels/features/home/presentation/views/manager/home_cubit/home_cubit.dart';
import 'package:booking_hotels/features/home/presentation/views/widgets/custom_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
  List<HotelModel> hotelList = [];
  List<HotelModel> searchHotels = [];


  @override
  void initState() {
    hotelList=BlocProvider.of<HomeCubit>(context).hotelList;
    searchHotels = hotelList;
    super.initState();
  }

  void updateHotels(value) {
    List<HotelModel> hotels = [];
    if (value.isEmpty) {
      hotels = hotelList;
    } else {
      hotels = hotelList
          .where((element) =>
              element.hotelName.toLowerCase().contains(value.toLowerCase()))
          .toList();
    }
    setState(() {
      searchHotels = hotels;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.05),
          child: CustomSearchBar(
            onChanged: (value) => updateHotels(value),
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
                image: searchHotels[index].image,
                title: searchHotels[index].hotelName,
                subTitle: searchHotels[index].country,
                onTap: () {
                  setState(() {
                    searchHotels.remove(searchHotels[index]);
                  });
                },
              );
            },
            separatorBuilder: (context, index) => const SizedBox(height: 8),
            itemCount: searchHotels.length,
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
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.06,
              vertical: 14),
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
              item:  hotelList[index],
              );
            },
          ),
        )
      ],
    );
  }
}
