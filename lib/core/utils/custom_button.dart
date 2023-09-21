import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      required this.onPressed,
      required this.textStyle,
      required this.color});
  final String text;
  final VoidCallback onPressed;
  final TextStyle textStyle;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: MaterialButton(
          onPressed: onPressed,
          padding: const EdgeInsets.all(10),
          color: color,
          height: 56,
          shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: color),
          ),
          child: Text(
            text,
            style: textStyle,
          ),
        ),
      ),
    );
  }
}
