import 'package:flutter/material.dart';
import '../../../../../generated/assets.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key, required this.onTap, required this.index});

  final void Function(int)? onTap;
  final int index;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      onTap: onTap,
      items: [
        BottomNavigationBarItem(
          icon: Image.asset(
            Assets.iconsHome,
          ),
          label: '',
          activeIcon: Column(
            children: [
              Image.asset(
                Assets.iconsHomeActive,
              ),
              const SizedBox(
                height: 5,
              ),
              Image.asset(
                Assets.iconsRectangle,
              ),
            ],
          ),
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            Assets.iconsTicket,
          ),
          label: '',
          activeIcon: Column(
            children: [
              Image.asset(
                Assets.iconsTicketStar,
              ),
              const SizedBox(
                height: 5,
              ),
              Image.asset(
                Assets.iconsRectangle,
              ),
            ],
          ),
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            Assets.iconsHeart,
          ),
          label: '',
          activeIcon: Column(
            children: [
              Image.asset(
                Assets.iconsLikes,
              ),
              const SizedBox(
                height: 5,
              ),
              Image.asset(
                Assets.iconsRectangle,
              ),
            ],
          ),
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            Assets.iconsProfile,
          ),
          label: '',
          activeIcon: Column(
            children: [
              Image.asset(
                Assets.iconsProfileActive,
              ),
              const SizedBox(
                height: 5,
              ),
              Image.asset(
                Assets.iconsRectangle,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
