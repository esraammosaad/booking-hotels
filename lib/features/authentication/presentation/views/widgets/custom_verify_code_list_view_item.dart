import 'package:flutter/material.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';

class CustomVerifyCodeListViewItem extends StatelessWidget {
  const CustomVerifyCodeListViewItem({
    super.key,
    required this.controller,
    required this.first,
    required this.last,
  });

  final TextEditingController controller;
  final bool first;
  final bool last;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.14,
        height: MediaQuery.of(context).size.width * 0.14,
        child: TextFormField(
          controller: controller,
          onChanged: (value) {
            if (value.isNotEmpty && last == false) {
              FocusScope.of(context).nextFocus();
            } else if (value.isEmpty && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          keyboardType: TextInputType.number,
          style: Styles.textStyle20
              .copyWith(color: Colors.black, fontWeight: FontWeight.w700),
          onSaved: (value) {},
          validator: (value) {
            if (value!.isEmpty) {
              return '';
            }
            return null;
          },
          cursorColor: kPrimaryColor,
          decoration: InputDecoration(
            isDense: true,
            errorStyle: const TextStyle(fontSize: 0.5),
            hintText: '0',
            hintStyle: Styles.textStyle20,
            contentPadding: const EdgeInsets.only(
              top: 25,
              left: 16,
            ),
            fillColor: kFieldColor,
            filled: true,
            border: buildOutlineInputBorder(),
            focusedBorder: buildOutlineInputBorder(),
            enabledBorder: buildOutlineInputBorder(),
            disabledBorder: buildOutlineInputBorder(),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(
        color: kFieldColor,
      ),
      borderRadius: BorderRadius.circular(8),
    );
  }
}
