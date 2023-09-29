import 'package:booking_hotels/constants.dart';
import 'package:booking_hotels/features/home/presentation/views/widgets/custom_nav_bar.dart';
import 'package:booking_hotels/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';
import '../../../favourite/presentation/views/favourite_view.dart';
import '../../../profile/presentation/views/profile_view.dart';
import '../../../trending/presentation/views/trending_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  PageController? pageController = PageController();

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        onPageChanged: (index) {
          selectedIndex = index;
          setState(() {});
        },
        children: const [
          HomeViewBody(),
          TrendingView(),
          FavouriteView(),
          ProfileView(),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: kPrimaryColor,
              blurRadius: 1,
            ),
          ],
        ),
        child: CustomNavBar(
          onTap: (index) {
            pageController!.jumpToPage(index);
          },
          index: selectedIndex,
        ),
      ),
    );
  }
}
