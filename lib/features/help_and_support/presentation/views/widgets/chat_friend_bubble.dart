import 'package:flutter/material.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';
class ChatBubbleFriend extends StatelessWidget {
  const ChatBubbleFriend({
    super.key,required this.message
  });
  final String message;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        margin: const EdgeInsets.only(left: 8, bottom: 3, top: 8, right: 8),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: kPrimaryColor,
            border: Border.all(color: kPrimaryColor),

            // color: KPrimaryColor,
            borderRadius:  BorderRadius.circular(8)),
        child:  Text(message,style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600,color: Colors.white)),
      ),
    );
  }
}