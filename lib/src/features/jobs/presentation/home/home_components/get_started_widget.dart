import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:ea_kazi/src/utils/size_config.dart';
import 'package:flutter/material.dart';

class GetStartedWidget extends StatelessWidget {
  const GetStartedWidget({
    Key? key,
    required this.title,
    required this.imagePath,
    this.onPressed,
  }) : super(key: key);

  final String title;
  final String imagePath;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: Sizes.p10),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          width: SizeConfig.blockSizeHorizontal * Sizes.p80,
          padding: AppConstants.kDefaultPadding,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Sizes.p12),
            color: AppColors.blueColor.withOpacity(.2),
          ),
          child: Center(
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      gapH2,
                      const Text(AppStrings.getStarted),
                    ],
                  ),
                ),
                Container(
                  padding: AppConstants.kDefaultPadding,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.blueColor.withOpacity(.5),
                  ),
                  child: Image.asset(imagePath),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
