import 'package:auto_route/auto_route.dart';
import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:ea_kazi/src/features/jobs&courses/presentation/jobs/jobs_screen.dart';
import 'package:ea_kazi/src/routes/router.gr.dart';
import 'package:flutter/material.dart';

class RecommendationWidget extends StatelessWidget {
  const RecommendationWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppConstants.kDefaultPadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            AppStrings.recommended,
            style: Theme.of(context).textTheme.subtitle1,
          ),
          TextButton(
            onPressed: () => context.router.push(const JobsRoute()),
            //TODO: IMPLEMENT SEE ALL RECOMMENDATIONS
            child: Text(
              AppStrings.seeAll,
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
        ],
      ),
    );
  }
}
