import 'package:flutter/material.dart';

import '../../../common/common_exports.dart';
import '../../../constants/constants_exports.dart';
import '../../../utils/utils_exports.dart';

class CourseDetailScreen extends StatelessWidget {
  const CourseDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return EaKaziScaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          AppStrings.assessmentCourse,
          style: Theme.of(context).textTheme.headline6,
        ),
        leading: BackButton(
          onPressed: () => null, //TODO: IMPLEMENT BACK BUTTON FUNCTIONALITY
          color: AppColors.darkColor,
        ),
      ),
      body: Padding(
        padding: kDefaultPadding / Sizes.p2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            gapH2,
            const Tutor(),
            gapH2,
            const CourseCard(),
            gapH2,
            const CourseCard(),
            gapH2,
            const CourseCard(),
            gapH2,
            const CourseCard(),
            gapH4,
            PrimaryButton(
              text: 'Take Course',
              onPressed: () => null, // TODO: IMPLEMENT FORM AUTHENETCIATION
            )
          ],
        ),
      ),
    );
  }
}

class CourseCard extends StatelessWidget {
  const CourseCard({Key? key}) : super(key: key);
  // final String card;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Sizes.p100,
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
            //TODO: VIDEO THUMBNAIL
            ClipRRect(
              borderRadius: BorderRadius.circular(
                Sizes.p10,
              ),
              child: SizedBox(
                height: double.infinity,
                width: SizeConfig.blockSizeHorizontal * 30,
                child: Container(
                  color: Colors.redAccent,
                  //TODO: PLACEHOLDER REPLACE WITH ORIGINAL VIDEO THUMBNAIL
                ),
              ),
            ),
            gapW6,
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Web Design: Strategy and Information Architecture",
                    softWrap: true,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  Spacer(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.star,
                        size: Sizes.p18,
                      ),
                      // gapW2,
                      //TODO: TURN THE BELOW TEXT TO A TEMPLATE STRING AND INSERT ALL THE CORRECT DETAILS
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

// ************************* TUTOR WIDGETS ************/
class Tutor extends StatelessWidget {
  const Tutor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const TutorLogo(),
        gapW6,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Jelafrica",
              style: Theme.of(context).textTheme.headline6,
            ), //TODO: CHANGE TO API NAME
            Text(
              "Tutor",
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    color: AppColors.secondaryColor,
                  ),
            ), // TODO: CHANGE TO API TUTOR OR NOT
          ],
        )
      ],
    );
  }
}

class TutorLogo extends StatelessWidget {
  const TutorLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: kDefaultPadding / Sizes.p2,
      height: SizeConfig.blockSizeVertical * Sizes.p6,
      width: SizeConfig.blockSizeHorizontal * Sizes.p12,
      decoration: BoxDecoration(
        color: AppColors.scaffoldBgColor,
        borderRadius: BorderRadius.circular(Sizes.p32),
        boxShadow: [
          BoxShadow(
            color: AppColors.secondaryColor.withOpacity(0.5),
            spreadRadius: Sizes.p2,
            blurRadius: Sizes.p4,
            offset: const Offset(Sizes.p0, Sizes.p4),
          )
        ],
      ),
      child: Center(
        child: Image.asset("assets/images/j.png"), 
      ),
    );
  }
}
