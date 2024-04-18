import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  double get mediawidth => MediaQuery.of(this).size.width;
  double get mediaHeight => MediaQuery.of(this).size.height;

  double get homeScreenAppBar => mediaHeight /3;
  double get sliderHeight => homeScreenAppBar /2.5;

  ColorScheme get colorScheme => Theme.of(this).colorScheme;
  TextTheme get textTheme => Theme.of(this).textTheme;


}
