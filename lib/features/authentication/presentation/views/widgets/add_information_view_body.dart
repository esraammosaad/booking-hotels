import 'package:booking_hotels/features/authentication/presentation/views/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/custom_button.dart';
import '../../../../../core/utils/custom_decoration.dart';
import '../../../../../core/utils/styles.dart';
import 'custom_add_photo_widget.dart';
import 'custom_app_bar.dart';

class AddInformationViewBody extends StatelessWidget {
  const AddInformationViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                const CustomAppBar(),
                const SizedBox(
                  height: 36,
                ),
                const CustomAddPhotoWidget(),
                const SizedBox(
                  height: 25,
                ),
                CustomTextFormField(
                  obscureText: false,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  hintText: 'Name',
                  onSave: (value) {},
                ),
                const SizedBox(
                  height: 24,
                ),
                CustomTextFormField(
                  obscureText: false,
                  keyboardType: TextInputType.phone,
                  textInputAction: TextInputAction.next,
                  hintText: 'Your number',
                  onSave: (value) {},
                ),
                const SizedBox(
                  height: 24,
                ),
                CustomTextFormField(
                  obscureText: false,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  hintText: 'Country',
                  onSave: (value) {},
                ),
                const SizedBox(
                  height: 24,
                ),
                CustomTextFormField(
                  obscureText: false,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.done,
                  hintText: 'Gender',
                  onSave: (value) {},
                ),
                const SizedBox(
                  height: 39,
                ),
                CustomButton(
                  text: 'Continue',
                  onPressed: () {},
                  textStyle: Styles.textStyle20.copyWith(
                      color: Colors.white, fontWeight: FontWeight.w700),
                  color: kPrimaryColor,
                ),
              ],
            ),
          ),
          const SliverFillRemaining(
            fillOverscroll: false,
            hasScrollBody: false,
            child: SizedBox(
              height: 20,
            ),
          ),
          const SliverToBoxAdapter(
            child: CustomDecoration(),
          )
        ],
      ),
    );
  }
}
