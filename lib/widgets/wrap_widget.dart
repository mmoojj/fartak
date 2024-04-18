import 'package:fartak/constant/assets_path.dart';
import 'package:fartak/constant/strings.dart';
import 'package:fartak/widgets/wrapItem.dart';
import 'package:flutter/material.dart';

class CustomWrap extends StatelessWidget {
  const CustomWrap({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.spaceEvenly,
      direction: Axis.horizontal,
      runSpacing: 10,
      spacing: 10,
      crossAxisAlignment: WrapCrossAlignment.center,
      runAlignment: WrapAlignment.center,
      children: [
        WrapItem(text: userText,icon:user ,),
        WrapItem(text: presentionText,icon:presention ,),
        WrapItem(text: crownText,icon:crown ,),
        WrapItem(text: securityText,icon:security ,),
        WrapItem(text: monitorText,icon:monitor ,),
        WrapItem(text: bookText,icon:book ,),
      ],
    );
  }
}
