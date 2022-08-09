// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import 'package:ea_kazi/src/common/common_exports.dart';
import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:ea_kazi/src/utils/size_config.dart';

import '../courses/courses.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return EaKaziScaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          AppStrings.profile,
          style: Theme.of(context).textTheme.headline6,
        ),
        leading: BackButton(
          onPressed: () => null, //TODO: IMPLEMENT BACK BUTTON FUNCTIONALITY
          color: AppColors.darkColor,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          gapH2,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Sizes.p20),
            child: Row(
              children: [
                //TODO: CHANGE TO NETWORK IMAGE
                const CircleAvatar(
                  radius: Sizes.p48,
                  backgroundImage: AssetImage(
                    "assets/images/face.jpg",
                  ),
                ),
                gapW12,
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Marvellous IK",
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                              color: const Color(0xFF595085),
                            ),
                      ),
                      Text(
                        "UI/UX Designer",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(color: AppColors.secondaryColor),
                      ),
                      TextButton(
                        onPressed: () => null, //TODO: WORK ON THIS
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.all(Sizes.p0),
                        ),
                        child: Text(
                          AppStrings.editProfile,
                          style: Theme.of(context).textTheme.bodyText2!.copyWith(
                                color: const Color(0XFF595085), //TODO: ISSUES
                              ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: kDefaultPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.skills,
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        color: const Color(0xFF22215B),
                      ),
                ),
                Wrap(
                  children: List.generate(
                    skills.length,
                    (index) => Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: Sizes.p24,
                        vertical: Sizes.p10,
                      ),
                      margin: kDefaultPadding / 5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Sizes.p10),
                        color: const Color(0xFFF5F9F9),
                      ),
                      child: Text(
                        skills[index],
                        style: Theme.of(context).textTheme.subtitle1!.copyWith(
                              color: const Color(0xFF479696),
                            ),
                      ),
                    ),
                  ),
                )

                //TODO: lIST SKILLS
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Sizes.p20),
            child: Text(
              AppStrings.overview,
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    color: const Color(0xFF22215B),
                  ),
            ),
          ),
          //TODO: OVERVIEW
          gapH2,
          SizedBox(
            height: SizeConfig.blockSizeVertical * Sizes.p10,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: overViewData.length,
              itemBuilder: (context, index) => Container(
                width: SizeConfig.blockSizeHorizontal * 40,
                height: SizeConfig.blockSizeVertical * Sizes.p8,
                margin: const EdgeInsets.only(left: Sizes.p20),
                padding: kDefaultPadding / Sizes.p2,
                decoration: BoxDecoration(
                  color: const Color(0xFFF1F3F6), //TODO
                  borderRadius: BorderRadius.circular(Sizes.p10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(overViewData[index].title),
                    Text(overViewData[index].subtitle),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(Sizes.p20),
            child: Text(
              AppStrings.portfolioProjects,
              style:
                  Theme.of(context).textTheme.subtitle1!.copyWith(color: const Color(0xFF22215B)),
            ),
          ),
          //TODO: PORTFOLIO PROJECTS
          Container(
            width: SizeConfig.blockSizeHorizontal * 40,
            height: SizeConfig.blockSizeVertical * Sizes.p8,
            margin: const EdgeInsets.only(left: Sizes.p20),
            padding: kDefaultPadding / Sizes.p2,
            decoration: BoxDecoration(
              color: const Color(0xFFF1F3F6), //TODO
              borderRadius: BorderRadius.circular(Sizes.p10),
            ),
            child: Image.asset('assets/images/jobs.png'),
          ),
          Padding(
            padding: const EdgeInsets.all(Sizes.p20),
            child: Text(
              AppStrings.nftCerts,
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    color: const Color(0xFF22215B),
                  ),
            ),
          ),
          Container(
            width: SizeConfig.blockSizeHorizontal * 40,
            height: SizeConfig.blockSizeVertical * Sizes.p8,
            margin: const EdgeInsets.only(left: Sizes.p20),
            padding: kDefaultPadding / Sizes.p2,
            decoration: BoxDecoration(
              color: const Color(0xFFF1F3F6), //TODO
              borderRadius: BorderRadius.circular(Sizes.p10),
            ),
            child: Image.asset('assets/images/jobs.png'),
          ),
          gapH2,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Sizes.p20),
            child: Text(
              AppStrings.registeredCourses,
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    color: const Color(0xFF22215B),
                  ),
            ),
          ),
          const CourseCard(
            jobType: "Visual Designer Course", //TODO: JOB TYPE
            companyName: "Jelafrica",
            difficultyType: "Intermediate",
            imagePath: AppAssetPaths.googleIcon,
            altText: "Free",
          ),
          gapH6
        ],
      ),
    );
  }
}

class OverViewModel {
  final String title;
  final String subtitle;

  OverViewModel({
    required this.title,
    required this.subtitle,
  });
}

List<OverViewModel> overViewData = [
  OverViewModel(title: "N20, 600", subtitle: "Current balance"),
  OverViewModel(title: "58", subtitle: "Jobs Applied"),
  OverViewModel(title: "15", subtitle: "Jobs Completed"),
];

List<String> skills = [
  "UI/UX",
  "Front - End Dev",
  "Figma",
  "Adobe xd",
];
