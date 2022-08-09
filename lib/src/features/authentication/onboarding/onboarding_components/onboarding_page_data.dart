import 'package:ea_kazi/src/constants/app_asset_paths.dart';
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
    imagePath: AppAssetPaths.personImage,
    heading: AppStrings.firstPageHeadingText,
    subHeading: AppStrings.firstPageSubHeadingText,
  ),
  OnBoardingModel(
    imagePath: AppAssetPaths.bidJobImage,
    heading: AppStrings.secondPageHeadingText,
    subHeading: AppStrings.secondPageSubHeadingText,
  ),
  OnBoardingModel(
    imagePath: AppAssetPaths.getPaidImage,
    heading: AppStrings.thirdPageHeadingText,
    subHeading: AppStrings.thirdPageSubHeadingText,
  ),
];
