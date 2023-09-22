import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/custom_button.dart';
import '../../../../../core/utils/custom_decoration.dart';
import '../../../../../core/utils/routes.dart';
import '../../../../../core/utils/styles.dart';
import 'custom_back_icon.dart';
import 'custom_new_password_form.dart';
import 'custom_text_form_field.dart';
class NewPasswordViewBody extends StatelessWidget {
  const NewPasswordViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              const CustomBackIcon(),
              const SizedBox(
                height: 58,
              ),
              Text(
                'New Password',
                style: Styles.textStyle24,
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 19.0),
                child: Text(
                  'Create Your New Password',
                  textAlign: TextAlign.center,
                  style: Styles.textStyle20.copyWith(color: kTextColor),
                ),
              ),
              const SizedBox(
                height: 36,
              ),
              const CustomNewPasswordForm(),

            ],
          ),
        ),
        const SliverFillRemaining(
          fillOverscroll: false,
          hasScrollBody: false,
          child: SizedBox(height: 20,),
        ),
        const SliverToBoxAdapter(child: CustomDecoration(),)
      ],
    );
  }
}


