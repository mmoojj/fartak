import 'package:fartak/constant/strings.dart';
import 'package:flutter/material.dart';

class LearningScreen extends StatelessWidget {
  const LearningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(learningScreenTitle),
      ),
    );
  }
}
