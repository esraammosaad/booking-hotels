import 'package:booking_hotels/constants.dart';
import 'package:booking_hotels/core/utils/styles.dart';
import 'package:booking_hotels/features/profile/presentation/views/widgets/custom_edit_profile_title.dart';
import 'package:booking_hotels/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'custom_hotel_review.dart';
import 'custom_hotel_services.dart';

class HotelDetailsBody extends StatelessWidget {
  const HotelDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Image.asset(Assets.imagesUnsplash),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.06,
                      left: MediaQuery.of(context).size.width * 0.03,
                      child: GestureDetector(
                        onTap: () {
                          context.pop();
                        },
                        child: Image.asset(Assets.iconsBack),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 21,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.05),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Flora Inn Hotel Dubai Airport",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: Styles.textStyle24,
                            ),
                          ),
                          const SizedBox(
                            width: 9,
                          ),
                          Text(
                            "(4.5)",
                            style: Styles.textStyle16.copyWith(
                              color: kPrimaryColor,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        "Garhoud, Dubai, United Arab Emirates",
                        style: Styles.textStyle16.copyWith(
                          color: Colors.black.withOpacity(0.7),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 26,
                      ),
                      const CustomEditProfileTitle(text: "About"),
                      Text(
                        "eaturing an outdoor swimming pool and views of city, Flora Inn Hotel is located in Dubai, just a 10 minute drive from Deira City Center Shopping Mall, Festival City Shopping Mall and Al Ghurair  Boasting a temperature controlled swimming pool with sundeck on the rooftop, guests can enjoy free high-speed WiFi is offered.",
                        style: Styles.textStyle16.copyWith(
                          fontWeight: FontWeight.w400,
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      const CustomHotelServices(),
                      const SizedBox(
                        height: 25,
                      ),
                      const CustomEditProfileTitle(text: "Gallary"),
                      const SizedBox(
                        height: 12,
                      ),
                      Image.asset(Assets.imagesGallary),
                      const SizedBox(
                        height: 25,
                      ),
                      const CustomEditProfileTitle(text: "Reviews"),
                      const SizedBox(
                        height: 15,
                      ),
                      const CustomHotelReview(
                        image: Assets.imagesReview_1,
                        name: "Sara Mohammed",
                        time: "2d ago",
                        message:
                            "Best hotel and good service Also in reception good director Mr yehia”",
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const CustomHotelReview(
                        image: Assets.imagesReview_2,
                        name: "Ahmed Ali",
                        time: "2d ago",
                        message:
                            "Location near to the airport and near to metro station . Many thanks Mr. Omer for his assist”",
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const CustomHotelReview(
                        image: Assets.imagesReview_1,
                        name: "Sara Mohammed",
                        time: "2d ago",
                        message:
                            "Best hotel and good service Also in reception good director Mr yehia”",
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 97,
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.04),
          decoration: BoxDecoration(
            color: const Color(0xffFFFBFB),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8),
            ),
            border: Border.all(
              color: kPrimaryColor.withOpacity(0.5),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                offset: const Offset(4, 4),
                blurRadius: 4,
              )
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "\$153.99 / Night",
                    style: Styles.textStyle20.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "Sep 30 - Oct 5",
                    style: Styles.textStyle16.copyWith(
                      color: Colors.black.withOpacity(0.7),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 14,
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  padding: const EdgeInsets.symmetric(
                    horizontal: 13,
                    vertical: 10,
                  ),
                  color: kPrimaryColor,
                  shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: kPrimaryColor),
                  ),
                  child: Text(
                    "Book Now",
                    style: Styles.textStyle20.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
