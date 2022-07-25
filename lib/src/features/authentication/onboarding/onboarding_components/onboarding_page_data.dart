import 'package:ea_kazi/src/constants/app_strings.dart';

class OnBoardingModel {
  OnBoardingModel({
    required this.imagePath,
    required this.heading,
    required this.subHeading,
  });

  final String imagePath;
  final String heading;
  final String subHeading;
}

List<OnBoardingModel> onBoardingData = [
  OnBoardingModel(
    imagePath: "assets/icons/logo.svg",
    heading: AppStrings.firstPageHeadingText,
    subHeading: AppStrings.firstPageSubHeadingText,
  ),
  OnBoardingModel(
    imagePath: "assets/icons/logo.svg",
    heading: AppStrings.secondPageHeadingText,
    subHeading: AppStrings.secondPageSubHeadingText,
  ),
  OnBoardingModel(
    imagePath: "assets/icons/logo.svg",
    heading: AppStrings.thirdPageHeadingText,
    subHeading: AppStrings.thirdPageSubHeadingText,
  ),
];
