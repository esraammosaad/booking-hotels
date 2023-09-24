import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../../../../../constants.dart';

class CustomAddPhotoWidget extends StatefulWidget {
  const CustomAddPhotoWidget({
    super.key,
  });

  @override
  State<CustomAddPhotoWidget> createState() => _CustomAddPhotoWidgetState();
}

class _CustomAddPhotoWidgetState extends State<CustomAddPhotoWidget> {
  File? image;

  getImage() async {
    final ImagePicker imagePicker = ImagePicker();
    final XFile? pickedImage =
        await imagePicker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        image = File(pickedImage.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        CircleAvatar(
          radius: MediaQuery.of(context).size.width * 0.25,
          backgroundColor: kSecondaryColor,
          child: image == null
              ? null
              : CircleAvatar(
                  radius: MediaQuery.of(context).size.width * 0.24,
                  backgroundImage: FileImage(image!),
                ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 11.0, bottom: 7),
          child: CircleAvatar(
            backgroundColor: kPrimaryColor,
            radius: MediaQuery.of(context).size.width * 0.05,
            child: IconButton(
              onPressed: () async {
                await getImage();
              },
              icon: const Icon(Icons.edit, color: Colors.white, size: 17),
            ),
          ),
        )
      ],
    );
  }
}
