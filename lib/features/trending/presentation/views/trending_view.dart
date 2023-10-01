import 'package:booking_hotels/features/trending/presentation/views/widgets/trending_view_body.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/custom_app_bar.dart';

class TrendingView extends StatelessWidget {
  const TrendingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: CustomAppBar(title: "Trending"),
      ),
      body: TrendingViewBody(),
    );
  }
}
