import 'dart:ui';

import 'package:flutter/material.dart';

const Color primaryColor = Color(0xff2672E7);
const Color backgroundColor = Color(0xffFAFAFA);
const Color secondryColor = Color(0x00FAFAFA);
const Color onSecondaryColor = Color(0xffB2B2B2);

ColorScheme colorScheme = ColorScheme.light(
    primary: primaryColor,
    background: backgroundColor,
    secondary: secondryColor
);

TextTheme textTheme = TextTheme(
    displaySmall: TextStyle(
        color: Colors.white,
        fontSize: 18
    ),
    bodySmall: TextStyle(
        color: Color(0xff919396),
        fontSize: 12
    )
    

);