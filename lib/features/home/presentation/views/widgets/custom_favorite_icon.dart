import 'package:booking_hotels/features/home/data/models/hotel_model.dart';
import 'package:booking_hotels/features/home/presentation/views/manager/favorite_cubit/favorite_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../../../constants.dart';
class CustomFavoriteIcon extends StatelessWidget {
  const CustomFavoriteIcon({
    super.key, required this.item,
  });
  final HotelModel item;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoriteCubit, FavoriteState>(
  builder: (context, state) {
    return GestureDetector(
    onTap: (){
      BlocProvider.of<FavoriteCubit>(context).getFavoriteItems(item: item);
    },
    child: CircleAvatar(
        radius: MediaQuery.of(context).size.width * 0.05,
        backgroundColor: item.isFavorite?kPrimaryColor:Colors.white,
        child:  Icon(FontAwesome.heart,color: item.isFavorite?Colors.white:kPrimaryColor,size: MediaQuery.of(context).size.width * 0.07,),
      ),
    );
  },
);
  }
}