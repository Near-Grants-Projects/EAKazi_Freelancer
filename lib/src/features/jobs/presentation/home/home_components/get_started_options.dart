import 'package:auto_route/auto_route.dart';
import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:ea_kazi/src/routes/router.gr.dart';
import 'package:ea_kazi/src/utils/utils_exports.dart';
import 'package:flutter/material.dart';

import 'get_started_widget.dart';

class GetStartedOptions extends StatelessWidget {
  const GetStartedOptions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.blockSizeVertical * Sizes.p18,
      child: ListView(
        shrinkWrap: true,
        primary: false,
        scrollDirection: Axis.horizontal,
        children: [
          GetStartedWidget(
            title: AppStrings.skillAcquisition,
            imagePath: AppAssetPaths.skillAcquisitionIcon,
            onPressed: () => context.router.push(const CoursesRoute()),
          ),
          GetStartedWidget(
            title: AppStrings.bidJobs,
            imagePath: AppAssetPaths.bidForJobsIcon,
            onPressed: () => context.router.push(const JobsRoute()),
          ),
          gapW4,
        ],
      ),
    );
  }
}
