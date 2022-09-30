import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:ea_kazi/src/utils/utils_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'onboarding_components/custom_elevated_button.dart';
import 'onboarding_components/onboarding_content.dart';
import 'onboarding_components/onboarding_page_data.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: Padding(
        padding: AppConstants.kDefaultPadding,
        child: Column(
          children: [
            gapH6,
            SvgPicture.asset(AppAssetPaths.appLogo),
            Expanded(
              flex: 2,
              child: PageView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: onBoardingData.length,
                // onPageChanged: (value) => _setPageIndex(value),
                itemBuilder: (_, index) => OnBoardingContent(
                  imagePath: onBoardingData[index].imagePath,
                  heading: onBoardingData[index].heading,
                  subHeading: onBoardingData[index].subHeading,
                ),
              ),
            ),
            gapH2,
            Row(
              children: const [
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: List.generate(
                //     onBoardingData.length,
                //     (index) => PageDots(index: index),
                //   ),
                // ),
                Spacer(),
                CustomRoundElevatedButton()
              ],
            ),
            gapH6,
          ],
        ),
      ),
    );
  }
}
