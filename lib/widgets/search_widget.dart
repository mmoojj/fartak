import 'package:fartak/constant/assets_path.dart';
import 'package:fartak/constant/strings.dart';
import 'package:fartak/theme/light.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
            enabled: true,
            hintStyle: Theme.of(context).textTheme.bodySmall,
            prefixIcon: PrefixIcon(),
            enabledBorder:OutlineInputBorder(borderRadius: BorderRadius.circular(18) , borderSide: BorderSide(color:secondryColor )) ,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(18) , borderSide: BorderSide(color:secondryColor )),
            fillColor: secondryColor),
      ),
    );
  }
}

class PrefixIcon extends StatelessWidget {
  const PrefixIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(width: 10,),
        SvgPicture.asset(search_icon),
        SizedBox(width: 10,),
        Container(width: 1,height: 20,color: onSecondaryColor,),
        SizedBox(width: 10,),
        Text(saerchFieldHintText , style: Theme.of(context).textTheme.bodySmall,)

      ],
    );
  }
}

