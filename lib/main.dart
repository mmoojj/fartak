import 'package:device_preview/device_preview.dart';
import 'package:fartak/screens/root.dart';
import 'package:fartak/theme/light.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: primaryColor
  ));
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: colorScheme,
        textTheme: textTheme,
        useMaterial3: true,
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: Directionality(
          textDirection: TextDirection.rtl, child: const RootScreen()),
    );
  }
}
