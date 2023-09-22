import 'package:flutter/material.dart';
import '../../../../../constants.dart';

class CustomAddPhotoWidget extends StatelessWidget {
  const CustomAddPhotoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        CircleAvatar(
          radius: MediaQuery.of(context).size.width * 0.25,
          backgroundColor: kSecondaryColor,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 11.0, bottom: 7),
          child: CircleAvatar(
              backgroundColor: kPrimaryColor,
              radius: MediaQuery.of(context).size.width * 0.05,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.edit,
                    color: Colors.white, size: 17),
              )),
        )
      ],
    );
  }
}