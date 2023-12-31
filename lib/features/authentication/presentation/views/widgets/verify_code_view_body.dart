import 'package:flutter/material.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/custom_decoration.dart';
import '../../../../../core/utils/styles.dart';
import 'custom_back_icon.dart';
import 'custom_verify_code_form.dart';

class VerifyCodeViewBody extends StatelessWidget {
  const VerifyCodeViewBody({Key? key, required this.phone}) : super(key: key);
  final String phone;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                const CustomBackIcon(),
                const SizedBox(
                  height: 58,
                ),
                Text(
                  'Verify Code',
                  style: Styles.textStyle24,
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 19.0),
                  child: Text(
                    'The confirmation Code Was Send Via Email',
                    textAlign: TextAlign.center,
                    style: Styles.textStyle20.copyWith(color: kTextColor),
                  ),
                ),
                const SizedBox(
                  height: 36,
                ),
                CustomVerifyCodeForm(phone: phone),
                const SizedBox(
                  height: 39,
                ),
                Text(
                  'Resend code in 00:59',
                  style: Styles.textStyle20.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
          ),
          const SliverFillRemaining(
            fillOverscroll: false,
            hasScrollBody: false,
            child: SizedBox(
              height: 50,
            ),
          ),
          const SliverToBoxAdapter(
            child: CustomDecoration(),
          ),
        ],
      ),
    );
  }
}
