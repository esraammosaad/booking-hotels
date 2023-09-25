import 'package:booking_hotels/features/home/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../../../../../core/utils/routes.dart';
import '../../../../../generated/assets.dart';
import '../../../data/models/country_model.dart';
import 'custom_list_view_item.dart';
import 'custom_search_bar.dart';
import 'custom_title.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  List<CountryModel> countryList = [
    CountryModel(image: Assets.imagesEgypt, name: "Egypt"),
    CountryModel(image: Assets.imagesNyork, name: "Nyork"),
    CountryModel(image: Assets.imagesIndea, name: "indea"),
    CountryModel(image: Assets.imagesDubai, name: "Dubai"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const CustomHomeAppBar(),
        const CustomSearchBar(),
        Padding(
          padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
          child: SizedBox(
            height: 100,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return const SizedBox(
                  width: 33,
                );
              },
              itemCount: countryList.length,
              itemBuilder: (context, index) => CustomListViewItem(
                image: countryList[index].image,
                name: countryList[index].name,
              ),
            ),
          ),
        ),
        const CustomTitle(title: "Popular", seeAll: "See All"),
        Center(
          child: GestureDetector(
            onTap: () async {
              await FirebaseAuth.instance.signOut();
              GoogleSignIn googleSignIn = GoogleSignIn();
              googleSignIn.disconnect();
              context.push(
                AppRoutes.kSignUpView,
              );
            },
            child: const Text("Sign out"),
          ),
        ),
      ],
    );
  }
}
