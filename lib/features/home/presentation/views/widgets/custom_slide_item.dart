import 'package:booking_hotels/features/home/presentation/views/widgets/custom_favorite_icon.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import '../../../data/models/hotel_model.dart';

class CustomSlideItem extends StatelessWidget {
  const CustomSlideItem({
    super.key, required this.item,
  });
  final HotelModel item;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width*0.8,
          child: AspectRatio(

            aspectRatio: 362/216,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(item.image,),
                  fit: BoxFit.fill,
                )
              ),
            ),
          ),
        ),
      
        Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.015,
            right: MediaQuery.of(context).size.width * 0.04,
            left: MediaQuery.of(context).size.width * 0.04,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomFavoriteIcon(item: item),
                ],
              ),
              Text(
                item.hotelName,
                style: Styles.textStyle18.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                item.country,
                style: Styles.textStyle12.copyWith(
                  color: Colors.white.withOpacity(0.7),
                ),
              ),
              const SizedBox(
                height: 15,
              ),

              Text(
                r'$''${item.price} ' 'Per Night',
                style: Styles.textStyle12.copyWith(color: Colors.white,fontWeight: FontWeight.w600),
              ),
            ],
          ),
        )
      ],
    );
  }
}
//
// left: MediaQuery.of(context).size.width * 0.02,
// top: MediaQuery.of(context).size.height * 0.1,
