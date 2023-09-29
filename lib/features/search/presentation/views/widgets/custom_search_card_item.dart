import 'package:flutter/material.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';

class CustomSearchCardItem extends StatelessWidget {
  const CustomSearchCardItem({
    super.key,
    required this.image,
    required this.hotelName,
    required this.country,
    required this.price,
    required this.favouriteImage,
  });

  final String image;
  final String hotelName;
  final String country;
  final String price;
  final String favouriteImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            offset: const Offset(4, 4),
            color: Colors.black.withOpacity(0.25),
            blurRadius: 4,
            blurStyle: BlurStyle.normal,
          ),
        ],
      ),
      child: Card(
        color: Colors.white,
        shadowColor: Colors.black.withOpacity(0.25),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 9,
            left: 12,
            right: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.asset(image, height: 96),
                  Positioned(
                    top: 9,
                    right: 9,
                    child: Image.asset(favouriteImage),
                  ),
                ],
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                hotelName,
                style: Styles.textStyle18.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                country,
                style: Styles.textStyle12.copyWith(
                  color: Colors.black.withOpacity(0.7),
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: 3,
              ),
              Row(
                children: [
                  Text(
                    price,
                    style: Styles.textStyle12.copyWith(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    " per Night",
                    style: Styles.textStyle12.copyWith(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w500,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
              const SizedBox(
                height: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
