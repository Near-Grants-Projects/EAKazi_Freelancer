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
    imagePath: "assets/images/dollars.png",
    heading: AppStrings.firstPageHeadingText,
    subHeading: AppStrings.firstPageSubHeadingText,
  ),
  OnBoardingModel(
    imagePath: "assets/images/dollars.png",
    heading: AppStrings.secondPageHeadingText,
    subHeading: AppStrings.secondPageSubHeadingText,
  ),
  OnBoardingModel(
    imagePath: "assets/images/dollars.png",
    heading: AppStrings.thirdPageHeadingText,
    subHeading: AppStrings.thirdPageSubHeadingText,
  ),
];
