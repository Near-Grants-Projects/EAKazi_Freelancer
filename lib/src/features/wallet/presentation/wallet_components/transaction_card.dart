// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:ea_kazi/src/utils/utils_exports.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard({
    Key? key,
    required this.transactionAmount,
    required this.sendersName,
  }) : super(key: key);

  final String transactionAmount;
  final String sendersName;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: kDefaultPadding,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.scaffoldBgColor,
        boxShadow: defaultBoxShadow,
        borderRadius: BorderRadius.circular(Sizes.p10),
      ),
      child: Row(
        children: [
          Container(
            padding: kDefaultPadding / Sizes.p2,
            height: SizeConfig.blockSizeVertical * Sizes.p6,
            width: SizeConfig.blockSizeHorizontal * Sizes.p12,
            decoration: BoxDecoration(
              color: AppColors.scaffoldBgColor,
              boxShadow: defaultBoxShadow,
              borderRadius: BorderRadius.circular(Sizes.p24),
            ),
            child: Center(
              child: SvgPicture.asset(AppAssetPaths.downwardArrowIcon),
            ),
          ),
          gapW4,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  sendersName,
                  style: Theme.of(context).textTheme.headline6,
                ),
                Text(
                  "Received",
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        color: AppColors.secondaryColor,
                      ),
                ),
              ],
            ),
          ),
          Text(
            transactionAmount,
            style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  color: AppColors.green500, //TODO: WORK ON THIS
                ),
          ),
        ],
      ),
    );
  }
}
