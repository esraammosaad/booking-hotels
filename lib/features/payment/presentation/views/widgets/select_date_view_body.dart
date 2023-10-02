import 'package:booking_hotels/constants.dart';
import 'package:booking_hotels/core/utils/custom_button.dart';
import 'package:booking_hotels/core/utils/routes.dart';
import 'package:booking_hotels/core/utils/styles.dart';
import 'package:booking_hotels/features/profile/presentation/views/widgets/custom_edit_profile_title.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'custom_calender.dart';
import 'custom_select_date_container.dart';

class SelectDateViewBody extends StatefulWidget {
  const SelectDateViewBody({Key? key}) : super(key: key);

  @override
  State<SelectDateViewBody> createState() => _SelectDateViewBodyState();
}

class _SelectDateViewBodyState extends State<SelectDateViewBody> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children:  [
        const CustomCalender(),
        Padding(
          padding: const EdgeInsets.only(left: 23.0, top: 28, right: 23,bottom: 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomEditProfileTitle(text: 'Check In'),
              const SizedBox(
                height: 14,
              ),
              const CustomSelectDateContainer(text: '1 Oct 2023'),
              const SizedBox(
                height: 20,
              ),
              const CustomEditProfileTitle(text: 'Check Out'),
              const SizedBox(
                height: 14,
              ),
              const CustomSelectDateContainer(text: '5 Oct 2023'),
              const SizedBox(
                height: 20,
              ),
              const CustomEditProfileTitle(text: 'Gust'),
              const SizedBox(
                height: 14,
              ),
              const CustomSelectDateContainer(text: '3'),
              const SizedBox(
                height: 25,
              ),
              CustomButton(text: 'continue', onPressed: (){
                context.push(AppRoutes.kConfirmBookingView);
              }, textStyle: Styles.textStyle20.copyWith(color: Colors.white,fontWeight: FontWeight.w700), color: kPrimaryColor, padding: 0)




            ],
          ),
        )
      ],
    );
  }
}

