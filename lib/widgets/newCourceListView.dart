import 'package:fartak/extestion/custom_extenstion.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NewCourseListView extends StatelessWidget {
  const NewCourseListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("جدید ترین دوره ها"),
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
          height: 400,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(bottom: 80),
            itemBuilder: (context, index) {
              return Card(
                elevation: 3,
                margin: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/newest_img.png", width: 300,),
                    Text("آموزش Chat GPT 4"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset("assets/icons/svg/student_icon.svg"),
                            Text("۱٬۳۴۲ دانشجو")
                          ],
                        ),
                        Row(
                          children: [
                            SvgPicture.asset("assets/icons/svg/clouck_icon.svg"),
                            Text("۵۶ ساعت")
                          ],
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset("assets/icons/svg/level_icon.svg"),
                            Text("سطح متوسط")
                          ],
                        ),
                        Row(
                          children: [
                            SvgPicture.asset("assets/icons/svg/managment_icon.svg"),
                            Text("مدیریت کسب و کار")
                          ],
                        )
                      ],
                    ),
                    ElevatedButton(
                        onPressed: (){},
                        child: Text("ثبت نام")),

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
