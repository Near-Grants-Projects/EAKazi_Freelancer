import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:ea_kazi/src/utils/utils_exports.dart';
import 'package:flutter/material.dart';

class CustomPinBox extends StatelessWidget {
  const CustomPinBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.blockSizeVertical * Sizes.p6,
      width: SizeConfig.blockSizeHorizontal * Sizes.p12,
      padding: AppConstants.kDefaultPadding / Sizes.p2,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.secondaryColor, width: Sizes.p2),
        borderRadius: BorderRadius.circular(Sizes.p10),
      ),
      child: const TextField(
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(border: InputBorder.none),
      ),
    );
  }
}
