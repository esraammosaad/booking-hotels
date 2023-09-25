import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/controllers.dart';
import '../../../../../core/utils/custom_button.dart';
import '../../../../../core/utils/routes.dart';
import '../../../../../core/utils/styles.dart';
import 'custom_verify_code_list_view.dart';

class CustomVerifyCodeForm extends StatefulWidget {
  const CustomVerifyCodeForm({Key? key, required this.phone}) : super(key: key);
  final String phone;

  @override
  State<CustomVerifyCodeForm> createState() => _CustomVerifyCodeFormState();
}

class _CustomVerifyCodeFormState extends State<CustomVerifyCodeForm> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  FirebaseAuth auth = FirebaseAuth.instance;
  String? verifyId;

  @override
  void initState() {
    phoneAuth();
    print("==========================");
    print(widget.phone.substring(8, widget.phone.length - 1));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
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
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                sendCode();
                //context.push(AppRoutes.kNewPasswordView);
              }
              autoValidateMode = AutovalidateMode.always;
              setState(() {});
            },
            textStyle: Styles.textStyle20
                .copyWith(color: Colors.white, fontWeight: FontWeight.w700),
            color: kPrimaryColor,
          ),
        ],
      ),
    );
  }

  Future<void> phoneAuth() async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: "+2${widget.phone.substring(8, widget.phone.length - 1)}",
      verificationCompleted: (PhoneAuthCredential credential) {},
      verificationFailed: (FirebaseAuthException e) {},
      codeSent: (String verificationId, int? resendToken) async {
        verifyId = verificationId;
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  sendCode() async {
    try {
      String smsCode =
          c1.text + c2.text + c3.text + c4.text + c5.text + c6.text;

      // Create a PhoneAuthCredential with the code
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
          verificationId: verifyId!, smsCode: smsCode);

      // Sign the user in (or link) with the credential
      await auth.signInWithCredential(credential).then((value) {
        if (value.user != null) {
          context.push(AppRoutes.kHomeView);
        }
      });
    } catch (e) {
      print(e);
    }
  }
}
