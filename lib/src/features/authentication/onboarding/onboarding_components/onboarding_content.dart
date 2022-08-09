import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:flutter/material.dart';

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
        Expanded(child: Image.asset(imagePath)),
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
