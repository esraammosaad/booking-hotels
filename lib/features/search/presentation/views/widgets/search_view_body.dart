import 'package:booking_hotels/features/home/presentation/views/widgets/custom_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../generated/assets.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.05),
          child: CustomSearchBar(
            prefixIcon: GestureDetector(
              onTap: () {
                context.pop();
              },
              child: Image.asset(Assets.iconsBack),
            ),
            label: Text(
              'Search',
              style: Styles.textStyle20.copyWith(
                  color: Colors.black.withOpacity(0.7),
                  fontWeight: FontWeight.w700),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.05),
          child: Text(
            "Previous searches",
            style: Styles.textStyle20.copyWith(
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
        ),
        const SizedBox(
          height: 25,
        )
      ],
    );
  }
}
