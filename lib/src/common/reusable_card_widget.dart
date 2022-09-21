import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:ea_kazi/src/utils/utils_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ReusableCardWidget extends StatelessWidget {
  const ReusableCardWidget({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.altText,
    required this.auxilliarytext,
    this.altWidget = const SizedBox(),
    this.onPressed,
    this.margin,
  }) : super(key: key);

  final String imagePath;
  final String title;
  final String subtitle;
  final String altText;
  final String auxilliarytext;
  final Widget altWidget;
  final VoidCallback? onPressed;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        padding: AppConstants.kDefaultPadding,
        margin: margin,
        decoration: BoxDecoration(
          color: AppColors.scaffoldBgColor,
          borderRadius: BorderRadius.circular(Sizes.p12),
          boxShadow: AppConstants.defaultBoxShadow,
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
                boxShadow: [
                  BoxShadow(
                    color: AppColors.secondaryColor.withOpacity(0.5),
                    spreadRadius: .5,
                    blurRadius: Sizes.p4,
                  )
                ],
              ),
              child: SvgPicture.asset(imagePath),
            ),
            gapW4,
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.overline!.copyWith(
                          letterSpacing: .5,
                        ),
                  ),
                  Text(
                    subtitle,
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Text(
                    altText,
                    style: Theme.of(context).textTheme.caption!.copyWith(
                          color: AppColors.secondaryColor,
                        ),
                  )
                ],
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  auxilliarytext,
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        color: AppColors.secondaryColor,
                      ),
                ),
                gapH2,
                altWidget,
              ],
            )
          ],
        ),
      ),
    );
  }
}
