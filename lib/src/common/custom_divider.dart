import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    Key? key,
    this.thickness = Sizes.p2,
    this.height = Sizes.p2,
  }) : super(key: key);

  final double thickness;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: height,
      thickness: thickness,
      color: AppColors.white700,
    );
  }
}
