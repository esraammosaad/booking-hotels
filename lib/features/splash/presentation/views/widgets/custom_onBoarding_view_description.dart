import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';

class CustomOnBoardingViewDescription extends StatelessWidget {
  const CustomOnBoardingViewDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Text(
          'Dicta sed repudiandae illo aut quisquam inventore. Sed accusamus expedita quia quos iste omnis quam sint.',
          textAlign: TextAlign.center,
          style: Styles.textStyle20,
        ),
      ),
    );
  }
}
