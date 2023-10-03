import 'package:booking_hotels/features/home/presentation/views/manager/favorite_cubit/favorite_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../home/data/models/hotel_model.dart';
import '../../../../search/presentation/views/widgets/custom_search_card_item.dart';

class FavouriteViewBody extends StatefulWidget {
  const FavouriteViewBody({super.key});

  @override
  State<FavouriteViewBody> createState() => _FavouriteViewBodyState();
}

class _FavouriteViewBodyState extends State<FavouriteViewBody> {
  List<HotelModel> hotelList = [];
  @override
  void initState() {
    hotelList = BlocProvider.of<FavoriteCubit>(context).favoriteItems;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.06, vertical: 14),
        child: BlocBuilder<FavoriteCubit, FavoriteState>(
  builder: (context, state) {
    return GridView.builder(
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
             item: hotelList[index],
            );
          },
        );
  },
),
      ),
    );
  }
}
