import 'package:booking_hotels/features/home/data/models/hotel_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


part 'favorite_state.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  FavoriteCubit() : super(FavoriteInitial());

  List<HotelModel> favoriteItems = [];

  void getFavoriteItems({required HotelModel item}) {
    emit(FavoriteLoading());

    if (!favoriteItems.contains(item)) {
      favoriteItems.add(item);
      item.isFavorite=true;

      emit(FavoriteSuccess());
    } else if (favoriteItems.contains(item)) {
      favoriteItems.remove(item);
      item.isFavorite=false;


      emit(FavoriteRemove());
    }
  }
}
