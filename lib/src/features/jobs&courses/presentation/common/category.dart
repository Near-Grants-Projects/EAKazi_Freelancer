import 'package:ea_kazi/src/constants/constants_exports.dart';

class Category {
  final String title;
  final String imagePath;

  const Category({
    required this.title,
    required this.imagePath,
  });
}

List<Category> categoryData = const [
  Category(
    title: AppStrings.media,
    imagePath: AppAssetPaths.mediaIcon,
  ),
  Category(
    title: AppStrings.design,
    imagePath: AppAssetPaths.designIcon,
  ),
  Category(
    title: AppStrings.devOps,
    imagePath: AppAssetPaths.devOpsIcon,
  ),
  Category(
    title: AppStrings.dataAnalysis,
    imagePath: AppAssetPaths.dataAnalysisIcon,
  ),
  Category(
    title: AppStrings.machineLearning,
    imagePath: AppAssetPaths.machineLearningIcon,
  ),
];
