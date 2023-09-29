import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../../generated/assets.dart';

class CustomTrendingItem extends StatelessWidget {
  const CustomTrendingItem({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  final String image;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.05),
      child: Stack(
        children: [
          Image.asset(image),
          Padding(
            padding: const EdgeInsets.only(left: 26),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 17,  right: 13),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(Assets.iconsFavourite),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.04,
                ),
                Text(title, style: Styles.textStyle24.copyWith(
                    color: Colors.white
                ), overflow: TextOverflow.ellipsis,maxLines: 1),
                SizedBox(
                  height: 7,
                ),
                Text(subTitle, style: Styles.textStyle16.copyWith(
                    color: Colors.white, fontWeight: FontWeight.w600
                ),)
              ],
            ),
          )
        ],
      ),
    );
  }
}