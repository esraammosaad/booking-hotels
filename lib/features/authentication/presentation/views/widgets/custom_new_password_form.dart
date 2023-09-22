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
  GlobalKey<FormState> formKey=GlobalKey<FormState>();
  AutovalidateMode autoValidateMode=AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
        key: formKey,
        autovalidateMode: autoValidateMode,
        child: Column(

          children: [
            CustomTextFormField(
                hintText: 'New Password', onSave: (value) {}),
            const SizedBox(
              height: 25,
            ),
            CustomTextFormField(
                hintText: 'Confirm Password', onSave: (value) {}),
            const SizedBox(
              height: 25,
            ),
            CustomButton(
                text: 'Save',
                onPressed: () {
                  if(formKey.currentState!.validate()){
                    formKey.currentState!.save();
                  }
                  autoValidateMode=AutovalidateMode.always;
                  setState(() {

                  });
                },
                textStyle: Styles.textStyle20.copyWith(
                    color: Colors.white, fontWeight: FontWeight.w700),
                color: kPrimaryColor),
          ],
        ));
  }
}