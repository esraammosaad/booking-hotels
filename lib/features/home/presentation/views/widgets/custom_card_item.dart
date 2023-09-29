import 'package:flutter/material.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../generated/assets.dart';

class CustomCardItem extends StatelessWidget {
  const CustomCardItem({
    super.key,
    required this.image,
    required this.hotelName,
    required this.country,
    required this.price,
  });

  final String image;
  final String hotelName;
  final String country;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.05),
      child: Container(
        height: 117,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(8),
            topLeft: Radius.circular(8),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    topLeft: Radius.circular(8),
                  ),
                ),
                height: double.infinity,
                width: MediaQuery.of(context).size.width * 0.4,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Stack(
                  children: [
                    Image.asset(image),
                    Positioned(
                      top: 10,
                      left: 13,
                      child: Image.asset(Assets.iconsFavourite),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            hotelName,
                            style: Styles.textStyle20.copyWith(
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          width: 52,
                          child: Text(
                            "(4.5/5)",
                            style: Styles.textStyle16.copyWith(
                                color: kPrimaryColor,
                                fontWeight: FontWeight.w600),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      country,
                      style: Styles.textStyle16.copyWith(
                        color: Colors.black.withOpacity(0.7),
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Row(
                      children: [
                        Text(
                          price,
                          style: Styles.textStyle16.copyWith(
                            color: kPrimaryColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          " per Night",
                          style: Styles.textStyle16.copyWith(
                            color: kPrimaryColor,
                            fontWeight: FontWeight.w600,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 11),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.black.withOpacity(0.7),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
