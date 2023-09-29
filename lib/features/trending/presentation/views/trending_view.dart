import 'package:booking_hotels/core/utils/routes.dart';
import 'package:booking_hotels/core/utils/styles.dart';
import 'package:booking_hotels/features/trending/presentation/views/widgets/trending_view_body.dart';
import 'package:booking_hotels/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TrendingView extends StatelessWidget {
  const TrendingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            context.pushReplacement(AppRoutes.kHomeView);
          },
          child: Image.asset(Assets.iconsBack),
        ),
        title: Text("Trending", style: Styles.textStyle24),
      ),
      body: const TrendingViewBody(),
    );
  }
}
