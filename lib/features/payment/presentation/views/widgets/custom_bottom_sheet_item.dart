import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';
class CustomBottomSheetItem extends StatelessWidget {
  const CustomBottomSheetItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height*0.4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height:
            MediaQuery.of(context).size.width * 0.25,
            width: MediaQuery.of(context).size.width * 0.25,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                  color: kPrimaryColor, width: 5),
            ),
            child: const Icon(
              FontAwesomeIcons.check,
              color: kPrimaryColor,
              size: 50,
            ),
          ),
          const SizedBox(
            height: 23,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width*0.5,
            child: Text(

              'Your Request Has Been Accepted',
              style: Styles.textStyle20.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w700),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
