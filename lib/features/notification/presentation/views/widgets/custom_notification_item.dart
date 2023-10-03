import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';

class CustomNotificationItem extends StatelessWidget {
  const CustomNotificationItem({
    super.key,
    required this.title,
    required this.subTitle, required this.trailing, required this.color, required this.borderColor,
  });

  final String title;
  final String subTitle;
  final Widget trailing;
  final Color color;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(
          color: borderColor,
        ),
        // boxShadow: [
        //   BoxShadow(
        //     blurRadius: 4,
        //     offset: const Offset(0, 2),
        //     color: Colors.black.withOpacity(0.25),
        //   )
        // ],
      ),
      child: Card(
        color: color,
        elevation: 0,
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        margin: EdgeInsets.zero,
        child: ListTile(

          title: Text(
            title,
            style: Styles.textStyle20.copyWith(
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
          subtitle: Text(
            subTitle,style: Styles.textStyle16,
          ),
          trailing: trailing,
        ),
      ),
    );
  }
}
