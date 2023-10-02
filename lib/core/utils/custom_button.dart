import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.textStyle,
    required this.color, required this.padding,
  });

  final String text;
  final VoidCallback onPressed;
  final TextStyle textStyle;
  final Color color;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: padding),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: MaterialButton(
          onPressed: onPressed,
          padding: const EdgeInsets.all(10),
          color: color,
          height: 56,
          shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(24),
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
