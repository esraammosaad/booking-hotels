import 'package:booking_hotels/features/home/presentation/views/widgets/recommended_view_body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/routes.dart';
import '../../../../core/utils/styles.dart';
import '../../../../generated/assets.dart';

class RecommendedView extends StatelessWidget {
  const RecommendedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              context.pop();
            },
            child: const Icon(Icons.arrow_back_ios_new_outlined)),
        title: Text("Recommended", style: Styles.textStyle24),
      ),
      body: const RecommendedViewBody(),
    );
  }
}
