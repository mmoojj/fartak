import 'package:fartak/constant/assets_path.dart';
import 'package:fartak/constant/strings.dart';
import 'package:fartak/widgets/bottomNav/bottomNavItem.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(16))
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BottomNavItem(
            text: homeScreenTitle,
            icon: btmNavHomeIcon,
            iconActivate: btmNavHomeIconActivate,
            isActive: true,
          ),
          BottomNavItem(
            text: treasureScreenTitle,
            icon: btmNavTreasureIcon,
            iconActivate: btmNavTreasureIcon,
            isActive: false,
          ),
          BottomNavItem(
            text: learningScreenTitle,
            icon: btmNavLearningIcon,
            iconActivate: btmNavLearningIcon,
            isActive: false,
          ),
          BottomNavItem(
            text: detailScreenTitle,
            icon: btmNavDetailIcon,
            iconActivate: btmNavDetailIcon,
            isActive: false,
          ),
        ],
      ),
    );
  }
}
