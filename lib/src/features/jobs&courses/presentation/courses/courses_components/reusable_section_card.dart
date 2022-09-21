import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:flutter/material.dart';

//TODO: GET DATA FROM API

class ReusableSectionCard extends StatelessWidget {
  const ReusableSectionCard({
    Key? key,
    required this.title,
    required this.duration,
    required this.section,
  }) : super(key: key);

  final String title;
  final String duration;
  final int section;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: AppConstants.kDefaultPadding,
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Section $section: $title",
              style: Theme.of(context).textTheme.subtitle1,
            ),
            gapH1,
            Text(
              "Video  •  $duration min",
              style: Theme.of(context).textTheme.caption!.copyWith(
                    color: AppColors.secondaryColor,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
