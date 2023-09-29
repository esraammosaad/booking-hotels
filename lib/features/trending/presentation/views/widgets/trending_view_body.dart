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
      subTitle: "Star \$50 per Night",
    ),
    TrendingModel(
      image: Assets.imagesIsland,
      title: "Islanda is always a good idea",
      subTitle: "Star \$50 per Night",
    ),
    TrendingModel(
      image: Assets.imagesRectangle,
      title: "Dubai days and sunny rays",
      subTitle: "Star \$50 per Night",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 24,
          ),
          ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return CustomTrendingItem(
                image: trendingList[index].image,
                title: trendingList[index].title,
                subTitle: trendingList[index].subTitle,
              );
            },
            separatorBuilder: (context, index) => const SizedBox(height: 14),
            itemCount: trendingList.length,
          ),
          const SizedBox(
            height: 14,
          ),
        ],
      ),
    );
  }
}
