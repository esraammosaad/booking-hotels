import 'package:booking_hotels/core/utils/styles.dart';
import 'package:flutter/material.dart';

import '../../../../../generated/assets.dart';
import '../../../data/trending_model.dart';
import 'custom_trending_item.dart';

class TrendingViewBody extends StatefulWidget {
  const TrendingViewBody({super.key});

  @override
  State<TrendingViewBody> createState() => _TrendingViewBodyState();
}

class _TrendingViewBodyState extends State<TrendingViewBody> {
  final List<TrendingModel> trendingList = [
    TrendingModel(
        image: Assets.imagesDubaiTrending,
        title: "Dubai days and sunny rays",
        subTitle: "Star \$50 per Night"),
    TrendingModel(
        image: Assets.imagesIsland,
        title: "Islanda is always a good idea",
        subTitle: "Star \$50 per Night"),
    TrendingModel(
        image: Assets.imagesRectangle,
        title: "Dubai days and sunny rays",
        subTitle: "Star \$50 per Night"),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 24,
          ),
          ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return CustomTrendingItem(
                    image: trendingList[index].image,
                    title: trendingList[index].title,
                    subTitle: trendingList[index].subTitle);
              },
              separatorBuilder: (context, index) => SizedBox(height: 14),
              itemCount: trendingList.length),
          SizedBox(
            height: 14,
          ),
        ],
      ),
    );
  }
}
