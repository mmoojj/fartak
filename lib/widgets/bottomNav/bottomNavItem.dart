import 'package:fartak/widgets/bottomNav/bottomNavIndecator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavItem extends StatelessWidget {
  const BottomNavItem(
      {super.key,
      required this.text,
      required this.icon,
      required this.isActive,
      required this.iconActivate});

  final String text;
  final String icon;
  final String iconActivate;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        isActive
            ? SvgPicture.asset(
                iconActivate,
              )
            : SvgPicture.asset(
                icon,
              ),
        SizedBox(
          height: 8,
        ),
        Text(text),
        SizedBox(
          height: 16,
        ),
        if (isActive)
          BottomNavIndecator()
      ],
    );
  }
}
