import 'package:booking_hotels/core/utils/styles.dart';
import 'package:booking_hotels/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconly/iconly.dart';
import '../../../../../constants.dart';
import '../../manager/chat_cubit/chat_cubit.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
  });
  static final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
        cursorColor: kPrimaryColor,
        controller: controller,
        onSubmitted: (value) async {
          await BlocProvider.of<ChatCubit>(context).sendMessage(
            message: value,
          );

          controller.clear();
        },
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 25),
          filled: true,
          fillColor: kFieldColor,
          suffixIcon: InkWell(
              onTap: () async {
                await BlocProvider.of<ChatCubit>(context)
                    .sendMessage(message: controller.text);

                controller.clear();
              },
              child: Image.asset(Assets.sendIcon)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32),
            borderSide: const BorderSide(color: kFieldColor),
          ),
          hintText: 'Can i help you ?',
          hintStyle: Styles.textStyle20,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32),
            borderSide: const BorderSide(color: kFieldColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32),
            borderSide: const BorderSide(color: kFieldColor),
          ),
        ));
  }
}
