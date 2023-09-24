import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/custom_button.dart';
import '../../../../../core/utils/styles.dart';
import '../../manager/auth_cubit/auth_cubit.dart';
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
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

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
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Email address must not be empty';
                }
                return null;
              },
              controller: emailController,
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
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Password must not be empty';
                }
                return null;
              },
              controller: passwordController,
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
                BlocProvider.of<AuthCubit>(context).loginUser(
                  email: emailController.text,
                  password: passwordController.text,
                );
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
