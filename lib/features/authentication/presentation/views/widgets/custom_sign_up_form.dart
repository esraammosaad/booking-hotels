import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/custom_button.dart';
import '../../../../../core/utils/routes.dart';
import '../../../../../core/utils/styles.dart';
import 'custom_text_form_field.dart';
class CustomSignUpForm extends StatefulWidget {
  const CustomSignUpForm({Key? key}) : super(key: key);

  @override
  State<CustomSignUpForm> createState() => _CustomSignUpFormState();
}

class _CustomSignUpFormState extends State<CustomSignUpForm> {
  GlobalKey<FormState> formKey=GlobalKey<FormState>();
  AutovalidateMode autoValidateMode=AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,
      child: Column(
        children: [

          CustomTextFormField(hintText: 'Email', onSave: (value) {}),
          const SizedBox(
            height: 24,
          ),
          CustomTextFormField(hintText: 'Password', onSave: (value) {}),
          const SizedBox(
            height: 24,
          ),
          CustomTextFormField(
              hintText: 'Confirm Password', onSave: (value) {}),
          const SizedBox(
            height: 39,
          ),
          CustomButton(
              text: 'Sign up',
              onPressed: () {
                if(formKey.currentState!.validate()){
                  formKey.currentState!.save();
                  context.pushReplacement(AppRoutes.kAddInformationView);
                }
                autoValidateMode=AutovalidateMode.always;
                setState(() {

                });
              },
              textStyle: Styles.textStyle20.copyWith(color: Colors.white),
              color: kPrimaryColor),
        ],
      ),
    );
  }
}