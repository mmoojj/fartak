import 'package:fartak/constant/assets_path.dart';
import 'package:fartak/constant/icons.dart';
import 'package:fartak/constant/strings.dart';
import 'package:fartak/extestion/custom_extenstion.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AppBarBody extends StatefulWidget {
  const AppBarBody({super.key});

  @override
  State<AppBarBody> createState() => _AppBarBodyState();
}

class _AppBarBodyState extends State<AppBarBody> {
  late final PageController controller;

  @override
  void initState() {
    controller = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = context.textTheme.displaySmall;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              userAppBarIcon,
              Text(
                homeScreenTitle,
                style: textStyle,
              ),
              bellAppBarIcon
            ],
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            handeImage,
            SizedBox(
              width: 8,
            ),
            Text(
              appBarText,
              style: textStyle,
            )
          ],
        ),
        SizedBox(
          height: 16,
        ),
        Container(
          height: context.sliderHeight,
          width: context.mediawidth,
          child: PageView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            controller: controller,
            itemBuilder: (context, index) {
              return Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(imageSlider),
                              fit: BoxFit.fill
                          )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Deep Learning",
                                style: context.textTheme.displaySmall!
                                    .copyWith(fontSize: 12),
                              ),
                              SizedBox(height: 10,),
                              Text(
                                "یادگیری عمیق یکی از محبوب‌ترین حوزه‌های هوش مصنوعی است که از شبکه‌های عصبی برای پردازش و تحلیل داده‌های پیچیده و با ابعاد بالا استفاده می‌کند.",
                                style: context.textTheme.displaySmall!
                                    .copyWith(fontSize: 10, height: 2),
                              ),
                            ]),
                      )
                  ),
                  SmoothPageIndicator(
                    effect:  SlideEffect(
                      dotWidth: 10,
                      dotHeight: 10
                    ),
                    controller:controller , count: 4,
                  )
                ],
              );
            },
          ),
        )
      ],
    );
  }
}