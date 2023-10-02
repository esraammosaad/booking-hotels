import 'package:flutter/material.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/custom_button.dart';
import '../../../../../core/utils/styles.dart';
import 'custom_text_form_field.dart';

class CustomNewPasswordForm extends StatefulWidget {
  const CustomNewPasswordForm({Key? key}) : super(key: key);

  @override
  State<CustomNewPasswordForm> createState() => _CustomNewPasswordFormState();
}

class _CustomNewPasswordFormState extends State<CustomNewPasswordForm> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,
      child: Column(
        children: [
          CustomTextFormField(
            color: const Color(0x0D000000),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Password must not be empty';
              }
              return null;
            },
            controller: passwordController,
            obscureText: true,
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
            hintText: 'New Password',
            onSave: (value) {},
          ),
          const SizedBox(
            height: 25,
          ),
          CustomTextFormField(
            color: const Color(0x0D000000),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter re-password';
              }
              if (passwordController.text != confirmPasswordController.text) {
                return "Please make sure your passwords match";
              }
              return null;
            },
            controller: confirmPasswordController,
            obscureText: true,
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.done,
            hintText: 'Confirm Password',
            onSave: (value) {},
          ),
          const SizedBox(
            height: 25,
          ),
          CustomButton(
            text: 'Save',
            onPressed: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              }
              autoValidateMode = AutovalidateMode.always;
              setState(
                () {},
              );
            },
            textStyle: Styles.textStyle20
                .copyWith(color: Colors.white, fontWeight: FontWeight.w700),
            color: kPrimaryColor,
          ),
        ],
      ),
    );
  }
}
