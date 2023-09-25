import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/custom_button.dart';
import '../../../../../core/utils/routes.dart';
import '../../../../../core/utils/styles.dart';
import 'custom_text_form_field.dart';

class CustomForgetPasswordForm extends StatefulWidget {
  const CustomForgetPasswordForm({Key? key}) : super(key: key);

  @override
  State<CustomForgetPasswordForm> createState() =>
      _CustomForgetPasswordFormState();
}

class _CustomForgetPasswordFormState extends State<CustomForgetPasswordForm> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 36,
          ),
          CustomTextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return 'Phone number must not be empty';
              }
              return null;
            },
            controller: phoneController,
            obscureText: false,
            keyboardType: TextInputType.phone,
            textInputAction: TextInputAction.done,
            hintText: 'Phone Number',
            onSave: (value) {},
          ),
          const SizedBox(
            height: 25,
          ),
          CustomButton(
            text: 'Continue',
            onPressed: () async {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();

                context.push(AppRoutes.kVerifyCodeView,
                    extra: {"phone": phoneController.text});
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
