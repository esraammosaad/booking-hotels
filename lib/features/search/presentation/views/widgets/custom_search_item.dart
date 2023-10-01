import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../generated/assets.dart';

class CustomSearchItem extends StatelessWidget {
  const CustomSearchItem({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.onTap,
  });

  final String image;
  final String title;
  final String subTitle;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.05),
      child: SizedBox(
        height: 70,
        child: Row(
          children: [
            Image.asset(image),
            Expanded(
              child: ListTile(
                visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
                title: Text(
                  title,
                  style: Styles.textStyle20.copyWith(
                      color: Colors.black, fontWeight: FontWeight.w600),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                subtitle: Text(
                  subTitle,
                  style: Styles.textStyle16,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                trailing: GestureDetector(
                  onTap: onTap,
                  child: Image.asset(Assets.iconsClose),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
