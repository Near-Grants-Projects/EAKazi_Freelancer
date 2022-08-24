import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:ea_kazi/src/utils/utils_exports.dart';
import 'package:flutter/material.dart';

class CourseProgressIndicator extends StatefulWidget {
  const CourseProgressIndicator({Key? key}) : super(key: key);

  @override
  State<CourseProgressIndicator> createState() =>
      _CourseProgressIndicatorState();
}

class _CourseProgressIndicatorState extends State<CourseProgressIndicator> {
  bool loading = true;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(Sizes.p6),
      child: loading
          ? SizedBox(
              width: SizeConfig.blockSizeHorizontal * Sizes.p20,
              child: const LinearProgressIndicator(
                value: Sizes.p64 / Sizes.p100,
                backgroundColor: AppColors.secondaryColor,
                valueColor: AlwaysStoppedAnimation<Color>(
                  AppColors.yellow500,
                ),
              ),
            )
          : const SizedBox(),
    );
  }
}
