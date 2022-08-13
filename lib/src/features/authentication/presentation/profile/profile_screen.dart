// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_route/auto_route.dart';
import 'package:ea_kazi/src/features/jobs&courses/presentation/courses/courses_components/course_progress_indicator.dart';
import 'package:ea_kazi/src/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:ea_kazi/src/common/common_exports.dart';
import 'package:ea_kazi/src/constants/constants_exports.dart';

import 'profile_components/overview.dart';
import 'profile_components/padded_text.dart';
import 'profile_components/profile_details_section.dart';
import 'profile_components/reusable_container.dart';
import 'profile_components/skills_list.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: const EaKaziAppBar(
          title: AppStrings.profile,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ProfileDetailsSection(),
            const PaddedText(text: AppStrings.skills),
            const SkillsList(),
            gapH2,
            const PaddedText(text: AppStrings.overview),
            //TODO: OVERVIEW
            gapH2,
            const Overview(),
            gapH2,
            const PaddedText(text: AppStrings.portfolioProjects),
            //TODO: PORTFOLIO PROJECTS
            gapH2,
            ReusableContainer(child: Image.asset('assets/images/a.png')),
            gapH2,
            const PaddedText(text: AppStrings.nftCerts),
            gapH2,
            ReusableContainer(child: Image.asset('assets/images/b.png')),
            gapH2,
            const PaddedText(text: AppStrings.registeredCourses),
            gapH2,
            ReusableCardWidget(
              imagePath: AppAssetPaths.eaKaziIcon,
              title: "Jelafrica",
              subtitle: "Visual Designer Course",
              altText: "Intermediate",
              auxilliarytext: "60% Completed •",
              margin: const EdgeInsets.symmetric(horizontal: Sizes.p16),
              altWidget: const CourseProgressIndicator(),
              onPressed: () => context.router.push(const CourseDetailRoute()),
            ),
            gapH6
          ],
        ),
      ),
    );
  }
}
