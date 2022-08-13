import 'package:ea_kazi/src/common/common_exports.dart';
import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:ea_kazi/src/utils/utils_exports.dart';
import 'package:flutter/material.dart';

import 'courses_components/reusable_course_card.dart';
import 'courses_components/tutor_widget.dart';

class CourseDetailScreen extends StatelessWidget {
  const CourseDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: const EaKaziAppBar(
          title: AppStrings.assessmentCourse,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: kDefaultPadding / Sizes.p2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              gapH2,
              const TutorWidget(),
              gapH2,
              const ReusableCourseCard(),
              gapH2,
              const ReusableCourseCard(),
              gapH2,
              const ReusableCourseCard(),
              gapH2,
              const ReusableCourseCard(),
              gapH2,
              const ReusableCourseCard(),
              gapH2,
              const ReusableCourseCard(),
              gapH2,
              const ReusableCourseCard(),
              gapH2,
              const ReusableCourseCard(),
              gapH4,
              PrimaryButton(
                text: AppStrings.takeCourse,
                onPressed: () => null, // TODO: IMPLEMENT FORM AUTHENETCIATION
              )
            ],
          ),
        ),
      ),
    );
  }
}
