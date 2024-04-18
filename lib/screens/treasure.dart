import 'package:fartak/constant/strings.dart';
import 'package:flutter/material.dart';

class TreasureScreen extends StatelessWidget {
  const TreasureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(treasureScreenTitle),
      ),
    );
  }
}
