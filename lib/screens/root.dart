import 'package:fartak/extestion/custom_extenstion.dart';
import 'package:fartak/screens/for_you.dart';
import 'package:fartak/screens/home.dart';
import 'package:fartak/screens/learning.dart';
import 'package:fartak/screens/treasure.dart';
import 'package:fartak/widgets/bottomNav/bottomNav.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          IndexedStack(
            index: 0,
            children: [
              HomeScreen(),
              TreasureScreen(),
              LearningScreen(),
              DetailScreen()
            ],
          ),
          Positioned(
            bottom: 0,
              left: 0,
              right: 0,
              child: BottomNavigation())
        ],
      ),
    );
  }
}
