import 'package:auto_route/auto_route.dart';
import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:ea_kazi/src/routes/router.gr.dart';
import 'package:flutter/material.dart';

import 'video_thumbnail_widget.dart';

class ReusableCourseCard extends StatelessWidget {
  const ReusableCourseCard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.router.push(const CourseVideoRoute()),
      //TODO: API IMPLEMENTATION
      child: Container(
        height: Sizes.p100,
        padding: AppConstants.kDefaultPadding / Sizes.p2,
        decoration: BoxDecoration(
          color: AppColors.scaffoldBgColor,
          borderRadius: BorderRadius.circular(Sizes.p10),
          boxShadow: AppConstants.defaultBoxShadow,
        ),
        child: Row(
          children: [
            //TODO: VIDEO THUMBNAIL
            const VideoThumbNailWidget(),
            gapW6,
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Web Design: Strategy and Information Architecture",
                    softWrap: true,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.star,
                        size: Sizes.p18,
                        color: AppColors.yellow500,
                      ),
                      //TODO: TURN THE BELOW TEXT TO A TEMPLATE STRING AND
                      //*INSERT ALL THE CORRECT DETAILS FROM API
                      Text(
                        " 4.5 • By Jelafrica • All Level",
                        softWrap: true,
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2!
                            .copyWith(color: AppColors.secondaryColor),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
