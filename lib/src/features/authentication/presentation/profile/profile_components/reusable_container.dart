import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:ea_kazi/src/utils/utils_exports.dart';
import 'package:flutter/material.dart';

class ReusableContainer extends StatelessWidget {
  const ReusableContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.blockSizeHorizontal * Sizes.p40,
      height: SizeConfig.blockSizeVertical * Sizes.p8,
      margin: const EdgeInsets.only(left: Sizes.p16),
      decoration: BoxDecoration(
        color: AppColors.white500,
        borderRadius: BorderRadius.circular(Sizes.p10),
      ),
      child: child,
    );
  }
}
