import 'package:flutter/material.dart';

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
        child: ListView.builder(
          shrinkWrap: true,

          padding: EdgeInsets.zero,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => const CustomVerifyCodeListViewItem(),
          itemCount: 6,
        ),
      ),
    );
  }
}
