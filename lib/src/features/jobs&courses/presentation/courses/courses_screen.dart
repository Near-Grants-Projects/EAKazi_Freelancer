import 'package:auto_route/auto_route.dart';
import 'package:ea_kazi/src/common/common_exports.dart';
import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:ea_kazi/src/routes/router.gr.dart';
import 'package:flutter/material.dart';

import '../common/jobs_courses_common_exports.dart';
import 'courses_components/course_progress_indicator.dart';

class CoursesScreen extends StatelessWidget {
  const CoursesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: const EaKaziAppBar(
          title: AppStrings.courses,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SearchField(),
            gapH2,
            const Categories(),
            gapH4,
            ReusableCardWidget(
              imagePath: AppAssetPaths.googleIcon,
              title: "Jelafrica",
              subtitle: "Visual Designer Course",
              altText: "Intermediate",
              auxilliarytext: "FREE",
              margin: const EdgeInsets.symmetric(horizontal: Sizes.p16),
              onPressed: () => context.router.push(const CourseDetailRoute()),
            ),
            gapH2,
            ReusableCardWidget(
              imagePath: AppAssetPaths.googleIcon,
              title: "Jelafrica",
              subtitle: "Visual Designer Course",
              altText: "Intermediate",
              auxilliarytext: "FREE",
              margin: const EdgeInsets.symmetric(horizontal: Sizes.p16),
              onPressed: () => context.router.push(const CourseDetailRoute()),
            ),
            gapH2,
            ReusableCardWidget(
              imagePath: AppAssetPaths.googleIcon,
              title: "Jelafrica",
              subtitle: "Visual Designer Course",
              altText: "Intermediate",
              auxilliarytext: "FREE",
              margin: const EdgeInsets.symmetric(horizontal: Sizes.p16),
              onPressed: () => context.router.push(const CourseDetailRoute()),
            ),
            gapH2,
            ReusableCardWidget(
              imagePath: AppAssetPaths.eaKaziIcon,
              title: "Jelafrica",
              subtitle: "Visual Designer Course",
              altText: "In-Progress",
              auxilliarytext: "60% Completed •",
              margin: const EdgeInsets.symmetric(horizontal: Sizes.p16),
              altWidget: const CourseProgressIndicator(),
              onPressed: () => context.router.push(const CourseDetailRoute()),
            ),
          ],
        ),
      ),
    );
  }
}
