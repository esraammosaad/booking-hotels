import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/custom_button.dart';
import '../../../../../core/utils/routes.dart';
import '../../../../../core/utils/styles.dart';
import 'custom_verify_code_list_view.dart';
class CustomVerifyCodeForm extends StatefulWidget {
  const CustomVerifyCodeForm({Key? key}) : super(key: key);

  @override
  State<CustomVerifyCodeForm> createState() => _CustomVerifyCodeFormState();
}

class _CustomVerifyCodeFormState extends State<CustomVerifyCodeForm> {
  GlobalKey<FormState> formKey=GlobalKey<FormState>();
  AutovalidateMode autoValidateMode=AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      key:formKey ,
      autovalidateMode: autoValidateMode,
      child: Column(
        children: [

          const CustomVerifyCodeListView(),
          const SizedBox(
            height: 25,
          ),
          CustomButton(
            text: 'Continue',
            onPressed: () {
              if(formKey.currentState!.validate()){
                formKey.currentState!.save();
                context.push(AppRoutes.kNewPasswordView);

              }
              autoValidateMode=AutovalidateMode.always;
              setState(() {

              });
            },
            textStyle: Styles.textStyle20.copyWith(
                color: Colors.white, fontWeight: FontWeight.w700),
            color: kPrimaryColor,
          ),
        ],
      ),
    );
  }
}