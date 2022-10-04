import 'package:ea_kazi/src/features/jobs/core/models/jobs_model/jobs_model.dart';
import 'package:ea_kazi/src/utils/util_functions.dart';
import 'package:flutter/material.dart';
import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:ea_kazi/src/utils/utils_exports.dart';
import 'package:flutter_svg/flutter_svg.dart';

class JobCard extends StatelessWidget {
  const JobCard({super.key, required this.job});

  final JobsModel job;

  @override
  Widget build(BuildContext context) {
    DateTime currentDate = DateTime.now();

    DateTime dateCreated = DateTime.parse(job.createdAt);

    return InkWell(
      onTap: () {},
      child: Container(
        width: double.infinity,
        padding: AppConstants.kDefaultPadding,
        decoration: BoxDecoration(
          color: AppColors.scaffoldBgColor,
          borderRadius: BorderRadius.circular(Sizes.p12),
          boxShadow: const [
            BoxShadow(
              color: AppColors.jobCardShadowColor,
              offset: Offset(0, 4),
              blurRadius: Sizes.p4,
            )
          ],
        ),
        child: Row(
          children: [
            Container(
              padding: AppConstants.kDefaultPadding / Sizes.p2,
              height: SizeConfig.blockSizeVertical * Sizes.p6,
              width: SizeConfig.blockSizeVertical * Sizes.p6,
              decoration: BoxDecoration(
                color: AppColors.scaffoldBgColor,
                borderRadius: BorderRadius.circular(Sizes.p32),
              ),
              child: SvgPicture.asset('assets/icons/eakazi.svg'),
            ),
            gapW4,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Recruiter name',
                  style: Theme.of(context).textTheme.overline!.copyWith(
                        letterSpacing: .5,
                      ),
                ),
                Text(
                  job.title,
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Text(
                  '${job.location} • ${job.culture}',
                  style: Theme.of(context)
                      .textTheme
                      .caption!
                      .copyWith(color: AppColors.secondaryColor),
                )
              ],
            ),
            const Spacer(),
            Column(
              children: [
                Text(
                  getTimeAgo(currentDate, dateCreated),
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        color: AppColors.secondaryColor,
                      ),
                ),
                gapH2,
              ],
            )
          ],
        ),
      ),
    );
  }
}
