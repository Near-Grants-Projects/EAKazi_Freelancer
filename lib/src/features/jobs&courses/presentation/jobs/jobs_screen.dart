import 'package:flutter/material.dart';
import 'package:ea_kazi/src/common/common_exports.dart';
import 'package:ea_kazi/src/constants/constants_exports.dart';

import '../common/jobs_courses_common_exports.dart';

class JobsScreen extends StatelessWidget {
  const JobsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: const EaKaziAppBar(
          title: AppStrings.jobs,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SearchField(),
            gapH2,
            const Categories(),
            gapH2,
            ReusableCardWidget(
              margin: kDefaultPadding / 2,
              imagePath: AppAssetPaths.googleIcon,
              title: "Jelafrica",
              subtitle: "UI/UX Designer",
              altText: "UI/UX Design Certificate required",
              auxilliarytext: "• N200,000",
              altWidget: Text(
                "Today",
                style: Theme.of(context).textTheme.caption!.copyWith(
                      color: AppColors.secondaryColor,
                    ),
              ),
            ),
            ReusableCardWidget(
              margin: kDefaultPadding / 2,
              imagePath: AppAssetPaths.googleIcon,
              title: "Jelafrica",
              subtitle: "UI/UX Designer",
              altText: "UI/UX Design Certificate required",
              auxilliarytext: "• N200,000",
            ),
            ReusableCardWidget(
              margin: kDefaultPadding / 2,
              imagePath: AppAssetPaths.googleIcon,
              title: "Jelafrica",
              subtitle: "UI/UX Designer",
              altText: "UI/UX Design Certificate required",
              auxilliarytext: "• N200,000",
            ),
            ReusableCardWidget(
              margin: kDefaultPadding / 2,
              imagePath: AppAssetPaths.googleIcon,
              title: "Jelafrica",
              subtitle: "UI/UX Designer",
              altText: "UI/UX Design Certificate required",
              auxilliarytext: "• N200,000",
            ),
            ReusableCardWidget(
              margin: kDefaultPadding / 2,
              imagePath: AppAssetPaths.googleIcon,
              title: "Jelafrica",
              subtitle: "UI/UX Designer",
              altText: "UI/UX Design Certificate required",
              auxilliarytext: "• N200,000",
            ),
            ReusableCardWidget(
              margin: kDefaultPadding / 2,
              imagePath: AppAssetPaths.googleIcon,
              title: "Jelafrica",
              subtitle: "UI/UX Designer",
              altText: "UI/UX Design Certificate required",
              auxilliarytext: "• N200,000",
            ),
          ],
        ),
      ),
    );
  }
}
