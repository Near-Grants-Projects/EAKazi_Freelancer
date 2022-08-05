import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class OnBoardingContent extends StatelessWidget {
  const OnBoardingContent({
    Key? key,
    required this.imagePath,
    required this.heading,
    required this.subHeading,
  }) : super(key: key);

  final String imagePath;
  final String heading;
  final String subHeading;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          imagePath,
          scale: 3,
        ),
        gapH6,
        Text(
          heading,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline5,
        ),
        gapH2,
        Text(
          subHeading,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline6!.copyWith(
                color: AppColors.secondaryColor,
              ),
        ),
      ],
    );
  }
}
