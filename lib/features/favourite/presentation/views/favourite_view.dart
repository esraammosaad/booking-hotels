import 'package:booking_hotels/features/favourite/presentation/views/widgets/favourite_view_body.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/custom_app_bar.dart';

class FavouriteView extends StatelessWidget {
  const FavouriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: CustomAppBar(title: "Favorite"),
      ),
      body: FavouriteViewBody(),
    );
  }
}
