import 'package:fartak/extestion/custom_extenstion.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CourseListView extends StatelessWidget {
  const CourseListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("دوره های اخیرا دیده شده"),
              TextButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("مشاهده همه"),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                      ),
                    ],
                  ))
            ],
          ),
        ),
        SizedBox(
          width: context.mediawidth,
          height: 160,
          child: ListView.builder(
            itemCount: 5,
            padding: EdgeInsets.only(bottom: 15, left: 10, right: 10),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Card(
                elevation: 3,
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/course_img.png",
                      fit: BoxFit.fitHeight,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "مهم ترین شاخصه های اقتصاد",
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(fontSize: 14 , color: Colors.black),
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 5,
                            ),
                            SvgPicture.asset("assets/icons/svg/level_icon.svg"),
                            SizedBox(
                              width: 5,
                            ),
                            Text("سطح متوسط" , style:TextStyle(fontSize: 12),),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 5,
                            ),
                            SvgPicture.asset(
                                "assets/icons/svg/clouck_icon.svg"),
                            SizedBox(
                              width: 5,
                            ),
                            Text("مدیریت کسب و کار " , style:TextStyle(fontSize: 12),),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
