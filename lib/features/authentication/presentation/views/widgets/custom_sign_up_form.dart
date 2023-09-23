import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/custom_button.dart';
import '../../../../../core/utils/styles.dart';
import '../../manager/auth_cubit/auth_cubit.dart';
import 'custom_text_form_field.dart';

class CustomSignUpForm extends StatefulWidget {
  const CustomSignUpForm({Key? key}) : super(key: key);

  @override
  State<CustomSignUpForm> createState() => _CustomSignUpFormState();
}

class _CustomSignUpFormState extends State<CustomSignUpForm> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  TextEditingController emailController = TextEditingController();
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
            controller: emailController,
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.emailAddress,
            obscureText: false,
            hintText: 'Email',
            onSave: (value) {},
          ),
          const SizedBox(
            height: 24,
          ),
          CustomTextFormField(
            controller: passwordController,
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
            obscureText: true,
            hintText: 'Password',
            onSave: (value) {},
          ),
          const SizedBox(
            height: 24,
          ),
          CustomTextFormField(
            controller: confirmPasswordController,
            obscureText: true,
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.done,
            hintText: 'Confirm Password',
            onSave: (value) {},
          ),
          const SizedBox(
            height: 39,
          ),
          CustomButton(
            text: 'Sign up',
            onPressed: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                BlocProvider.of<AuthCubit>(context).registerUser(
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
