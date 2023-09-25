import 'package:flutter/material.dart';
import '../../../../../core/utils/controllers.dart';
import 'custom_verify_code_list_view_item.dart';

class CustomVerifyCodeListView extends StatelessWidget {
  const CustomVerifyCodeListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: MediaQuery.of(context).size.width * 0.14,
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomVerifyCodeListViewItem(
                  controller: c1,
                  first: true,
                  last: false,
                ),
                CustomVerifyCodeListViewItem(
                  controller: c2,
                  first: false,
                  last: false,
                ),
                CustomVerifyCodeListViewItem(
                  controller: c3,
                  first: false,
                  last: false,
                ),
                CustomVerifyCodeListViewItem(
                  controller: c4,
                  first: false,
                  last: false,
                ),
                CustomVerifyCodeListViewItem(
                  controller: c5,
                  first: false,
                  last: false,
                ),
                CustomVerifyCodeListViewItem(
                  controller: c6,
                  first: false,
                  last: true,
                ),
              ],
            ),
          ],
        ),
        // child: ListView.builder(
        //   shrinkWrap: true,
        //
        //   padding: EdgeInsets.zero,
        //   scrollDirection: Axis.horizontal,
        //   itemBuilder: (context, index) => const CustomVerifyCodeListViewItem(),
        //   itemCount: 6,
        // ),
      ),
    );
  }
}
