import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:ea_kazi/src/utils/utils_exports.dart';
import 'package:flutter/material.dart';

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
        boxShadow: defaultBoxShadow,
      ),
      child: Image.asset("assets/images/j.png"),
    );
  }
}
