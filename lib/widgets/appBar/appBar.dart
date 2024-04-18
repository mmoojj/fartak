import 'package:fartak/extestion/custom_extenstion.dart';
import 'package:fartak/widgets/appBar/appBarBody.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      height: context.homeScreenAppBar,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(24),
          ),
          color: context.colorScheme.primary),
      child:AppBarBody() ,
    );
  }
}
