import 'package:booking_hotels/features/home/presentation/views/manager/home_cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'custom_card_item.dart';

class RecommendedViewBody extends StatefulWidget {
  const RecommendedViewBody({super.key});

  @override
  State<RecommendedViewBody> createState() => _RecommendedViewBodyState();
}

class _RecommendedViewBodyState extends State<RecommendedViewBody> {
  List hotelList=[];
  @override
  void initState() {
    hotelList=BlocProvider.of<HomeCubit>(context).hotelList;    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14),
        child: ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return CustomCardItem(
              item: hotelList[index],

            );
          },
          separatorBuilder: (context, index) => const SizedBox(height: 7),
          itemCount: hotelList.length,
        ),
      ),
    );
  }
}
