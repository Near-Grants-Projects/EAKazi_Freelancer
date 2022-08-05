import 'dart:async';

import 'package:ea_kazi/src/common/common_exports.dart';
import 'package:ea_kazi/src/constants/app_sizes.dart';
import 'package:ea_kazi/src/constants/app_strings.dart';
import 'package:ea_kazi/src/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants/constants_exports.dart';
import '../home/home_screen.dart';

class CoursesScreen extends StatelessWidget {
  const CoursesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return EaKaziScaffold(
      title: AppStrings.courses,
      body: Column(
        children: [
          const SearchField(),
          gapH2,
          SizedBox(
            height: 50,
            child: ListView.builder(
              primary: false,
              scrollDirection: Axis.horizontal,
              itemCount: categoryData.length,
              itemBuilder: (_, index) => CategoryItem(
                title: categoryData[index].title,
                imagePath: categoryData[index].imagePath,
                onPressed: () => null,
                //TODO: SORT THIS ONPRESSED IMPLEMENTATION
              ),
            ),
          ),
          gapH4,
          const CourseCard(
            jobType: "Visual Designer Course", //TODO: JOB TYPE
            companyName: "Jelafrica",
            difficultyType: "Intermediate",
            imagePath: AppAssetPaths.googleIcon,
            altText: "Free",
          ),
          const CourseCard(
            jobType: "Visual Designer Course", //TODO: JOB TYPE
            companyName: "Jelafrica",
            difficultyType: "Intermediate",
            imagePath: AppAssetPaths.googleIcon,
            altText: "Free",
          ),
          const CourseCard(
            jobType: "Visual Designer Course", //TODO: JOB TYPE
            companyName: "Jelafrica",
            difficultyType: "Intermediate",
            imagePath: AppAssetPaths.googleIcon,
            altText: "Free",
          ),
          const CourseCard(
            jobType: "Visual Designer Course", //TODO: JOB TYPE
            companyName: "Jelafrica",
            difficultyType: "Intermediate",
            imagePath: AppAssetPaths.googleIcon,
            altText: "Free",
          ),
        ],
      ),
    );
  }
}

class CourseCard extends StatelessWidget {
  const CourseCard({
    Key? key,
    required this.jobType,
    required this.companyName,
    required this.difficultyType,
    required this.imagePath,
    this.altText,
  }) : super(key: key);

  final String jobType;
  final String companyName;
  final String difficultyType;
  final String imagePath;
  final String? altText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kDefaultPadding / Sizes.p2,
      child: InkWell(
        onTap: () => null, //TODO: WORK ON THIS FOR LISTVIEW
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.scaffoldBgColor,
            borderRadius: BorderRadius.circular(Sizes.p10),
            boxShadow: [
              BoxShadow(
                color: AppColors.secondaryColor.withOpacity(0.5),
                spreadRadius: Sizes.p2,
                blurRadius: Sizes.p4,
                offset: const Offset(Sizes.p0, Sizes.p4),
              )
            ],
          ),
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Container(
                  padding: kDefaultPadding / 2,
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: AppColors.scaffoldBgColor,
                    borderRadius: BorderRadius.circular(Sizes.p24),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.secondaryColor.withOpacity(0.5),
                        spreadRadius: Sizes.p2,
                        blurRadius: Sizes.p4,
                        offset: const Offset(Sizes.p0, Sizes.p4),
                      )
                    ],
                  ),
                  child: SvgPicture.asset(imagePath),
                ),
                gapW6,
                Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        companyName,
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Text(
                              jobType,
                              softWrap: true,
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle2!
                                  .copyWith(fontSize: 16),
                            ),
                          ),
                          Text(
                            altText!,
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2!
                                .copyWith(color: AppColors.secondaryColor),
                          ), //TODO: TIME IMPLEMENTATION
                        ],
                      ),
                      Row(
                        children: [
                          //TODO: Course Difficulty Type
                          Text(
                            difficultyType,
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2!
                                .copyWith(color: AppColors.secondaryColor),
                          ),
                          // const CourseProgressIndicator()
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CourseProgressIndicator extends StatefulWidget {
  const CourseProgressIndicator({Key? key}) : super(key: key);

  @override
  State<CourseProgressIndicator> createState() =>
      _CourseProgressIndicatorState();
}

class _CourseProgressIndicatorState extends State<CourseProgressIndicator> {
  bool loading = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: loading
            ? const LinearProgressIndicator(
                backgroundColor: AppColors.secondaryColor,
                valueColor: AlwaysStoppedAnimation<Color>(
                  AppColors.progressColor,
                ),
              )
            : const Text(AppStrings.emptyString),
      ),
    ) ;
  }
}
