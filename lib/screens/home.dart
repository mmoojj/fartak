import 'package:fartak/widgets/CourseListView.dart';
import 'package:fartak/widgets/appBar/appBar.dart';
import 'package:fartak/widgets/newCourceListView.dart';
import 'package:fartak/widgets/search_widget.dart';
import 'package:fartak/widgets/wrap_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(),
            SearchField(),
            CustomWrap(),
            CourseListView(),
            NewCourseListView()
          ],
        ),
      ),
    );
  }
}
