import 'package:fartak/theme/light.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WrapItem extends StatelessWidget {
  const WrapItem({super.key, required this.icon, required this.text});

  final String icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      width: 110,
      decoration: BoxDecoration(
        color: secondryColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(icon),
          Text(
            text,
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: Colors.black),
          )
        ],
      ),
    );
  }
}
