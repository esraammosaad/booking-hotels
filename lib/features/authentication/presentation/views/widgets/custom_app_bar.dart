import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import 'custom_back_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CustomBackIcon(),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.1,
        ),
        Expanded(
            child: Text(
          'Add Your Information',
          style: Styles.textStyle20
              .copyWith(color: Colors.black, fontWeight: FontWeight.w700),
          textAlign: TextAlign.center,
        ))
      ],
    );
  }
}
