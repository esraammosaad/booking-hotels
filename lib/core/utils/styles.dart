import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

abstract class Styles {
  static TextStyle textStyle46 = const TextStyle(
      fontSize: 48, fontWeight: FontWeight.w600, color: Colors.white);
  static TextStyle textStyle32 = const TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w600,
    color: Color(0xFF212121),
  );
  static TextStyle textStyle20 = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: Color(0x80000000),
  );
  static TextStyle textStyle36 = const TextStyle(
    fontSize: 36,
    fontWeight: FontWeight.w700,
  );
  static TextStyle textStyle24 = const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );
}

void showAwesomeDialog(
  BuildContext context,
  DialogType dialogType,
  String title,
  String desc,
) {
  AwesomeDialog(
    context: context,
    dialogType: dialogType,
    animType: AnimType.rightSlide,
    title: title,
    desc: desc,
  ).show();
}
