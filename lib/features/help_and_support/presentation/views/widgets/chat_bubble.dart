import 'package:booking_hotels/core/utils/styles.dart';
import 'package:flutter/material.dart';

import '../../../../../constants.dart';


class ChatBubble extends StatelessWidget {
   const ChatBubble({
    super.key,required this.message
  });
  final String message;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.only(left: 8, bottom: 3, top: 8, right: 8),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: const Color.fromRGBO(0, 0, 0, 0.2),



            // color: KPrimaryColor,
            borderRadius:  BorderRadius.circular(8)),
        child:  Text(message,style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),),
      ),
    );
  }
}

