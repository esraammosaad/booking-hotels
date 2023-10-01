import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';

class CustomHotelReview extends StatelessWidget {
  const CustomHotelReview({
    super.key,
    required this.image,
    required this.name,
    required this.time,
    required this.message,
  });

  final String image;
  final String name;
  final String time;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 9),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.black.withOpacity(0.1),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(image),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: Styles.textStyle16.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    time,
                    style: Styles.textStyle14.copyWith(
                      color: Colors.black.withOpacity(0.7),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 13,
          ),
          Text(message)
        ],
      ),
    );
  }
}
