import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'reusable_section_card.dart';

//TODO: GET DATA FROM API

class CourseContentTab extends StatelessWidget {
  const CourseContentTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.vertical,
      itemCount: courseData.length,
      separatorBuilder: (_, index) => const Divider(
        height: Sizes.p2,
        thickness: Sizes.p2,
        color: AppColors.white700,
      ),
      itemBuilder: (context, index) => ReusableSectionCard(
        section: courseData[index].section,
        title: courseData[index].title,
        duration: courseData[index].duration,
      ),
    );
  }
}

//TODO: TO BE DELETED DURING API IMPLEMENTATION
List<Course> courseData = [
  Course(
    section: 1,
    title: "Welcome to Jelafrica UX Design",
    duration: DateFormat(DateFormat.MINUTE).format(DateTime.now()),
  ),
  Course(
    section: 1,
    title: "Welcome to Jelafrica UX Design",
    duration: DateFormat(DateFormat.MINUTE).format(DateTime.now()),
  ),
  Course(
    section: 1,
    title: "Welcome to Jelafrica UX Design",
    duration: DateFormat(DateFormat.MINUTE).format(DateTime.now()),
  ),
  Course(
    section: 1,
    title: "Welcome to Jelafrica UX Design",
    duration: DateFormat(DateFormat.MINUTE).format(DateTime.now()),
  ),
  Course(
    section: 1,
    title: "Welcome to Jelafrica UX Design",
    duration: DateFormat(DateFormat.MINUTE).format(DateTime.now()),
  ),
  Course(
    section: 1,
    title: "Welcome to Jelafrica UX Design",
    duration: DateFormat(DateFormat.MINUTE).format(DateTime.now()),
  ),
  Course(
    section: 1,
    title: "Welcome to Jelafrica UX Design",
    duration: DateFormat(DateFormat.MINUTE).format(DateTime.now()),
  ),
  Course(
    section: 1,
    title: "Welcome to Jelafrica UX Design",
    duration: DateFormat(DateFormat.MINUTE).format(DateTime.now()),
  ),
  Course(
    section: 1,
    title: "Welcome to Jelafrica UX Design",
    duration: DateFormat(DateFormat.MINUTE).format(DateTime.now()),
  ),
  Course(
    section: 1,
    title: "Welcome to Jelafrica UX Design",
    duration: DateFormat(DateFormat.MINUTE).format(DateTime.now()),
  ),
];

class Course {
  final int section;
  final String title;
  final String duration;

  const Course({
    required this.section,
    required this.title,
    required this.duration,
  });
}
