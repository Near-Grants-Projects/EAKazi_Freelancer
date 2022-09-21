import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:flutter/material.dart';

class ReusableWidget extends StatelessWidget {
  const ReusableWidget({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppConstants.kDefaultPadding,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Sizes.p10),
        color: AppColors.white700,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headline6,
          ),
          gapH2,
          Text(
            subtitle,
            style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  color: AppColors.blue700,
                ),
          ),
        ],
      ),
    );
  }
}
