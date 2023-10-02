import 'package:booking_hotels/features/authentication/presentation/views/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/custom_button.dart';
import '../../../../../core/utils/custom_decoration.dart';
import '../../../../../core/utils/styles.dart';
import 'custom_add_photo_widget.dart';
import 'custom_app_bar.dart';

class AddInformationViewBody extends StatefulWidget {
  const AddInformationViewBody({Key? key}) : super(key: key);

  @override
  State<AddInformationViewBody> createState() => _AddInformationViewBodyState();
}

class _AddInformationViewBodyState extends State<AddInformationViewBody> {
  var selectedGender = "Male";

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
                  color: const Color(0x0D000000),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Name must not be empty';
                    }
                    return null;
                  },
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
                  color: const Color(0x0D000000),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Phone number must not be empty';
                    }
                    return null;
                  },
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
                  color: const Color(0x0D000000),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Country must not be empty';
                    }
                    return null;
                  },
                  obscureText: false,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  hintText: 'Country',
                  onSave: (value) {},
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: kFieldColor,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: const Color(0x0D000000),
                    ),
                  ),
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: DropdownButton(
                      style: Styles.textStyle20.copyWith(
                        color: const Color(0x80000000),
                        fontWeight: FontWeight.w400,
                      ),
                      underline: const Text(""),
                      icon: Image.asset(
                        "assets/icons/dropDownIcon.png",
                        color: const Color(0x80000000),
                      ),
                      isExpanded: true,
                      borderRadius: BorderRadius.circular(8),
                      padding: const EdgeInsets.only(
                        top: 8,
                        bottom: 8,
                        left: 25,
                        right: 25,
                      ),
                      hint: Text(
                        "Gender",
                        style: Styles.textStyle20.copyWith(
                          color: const Color(0x80000000),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      items: ["Male", "Female"]
                          .map((e) => DropdownMenuItem(
                                value: e,
                                child: Text(e.toString()),
                              ))
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          selectedGender = value!;
                        });
                      },
                      value: selectedGender),
                ),
                const SizedBox(
                  height: 24,
                ),

                const SizedBox(
                  height: 39,
                ),
                CustomButton(
                  text: 'Continue',
                  onPressed: () {},
                  textStyle: Styles.textStyle20.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
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
