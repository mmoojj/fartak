import 'package:flutter/material.dart';

class BottomNavIndecator extends StatelessWidget {
  const BottomNavIndecator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 4,
      width: 28,
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}
