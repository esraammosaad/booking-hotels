import 'package:flutter/material.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/custom_button.dart';
import '../../../../../core/utils/styles.dart';
import 'custom_forget_password_widget.dart';
import 'custom_text_form_field.dart';

class CustomSignInForm extends StatefulWidget {
  const CustomSignInForm({Key? key}) : super(key: key);

  @override
  State<CustomSignInForm> createState() => _CustomSignInFormState();
}

class _CustomSignInFormState extends State<CustomSignInForm> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 22.0, bottom: 24),
            child: CustomTextFormField(
              obscureText: false,
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.emailAddress,
              hintText: 'Email',
              onSave: (value) {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 7),
            child: CustomTextFormField(
              obscureText: true,
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.done,
              hintText: 'Password',
              onSave: (value) {},
            ),
          ),
          const CustomForgetPasswordWidget(),
          CustomButton(
            text: 'Sign in',
            onPressed: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              }
              autoValidateMode = AutovalidateMode.always;
              setState(
                () {},
              );
            },
            textStyle: Styles.textStyle20.copyWith(color: Colors.white),
            color: kPrimaryColor,
          ),
        ],
      ),
    );
  }
}
