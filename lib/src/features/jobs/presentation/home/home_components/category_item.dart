import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    Key? key,
    required this.title,
    required this.imagePath,
    required this.onPressed,
  }) : super(key: key);

  final String title;
  final String imagePath;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: Sizes.p16),
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: AppColors.blueColor),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Sizes.p10),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(imagePath),
            gapW2,
            Text(
              title,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    color: AppColors.secondaryColor,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
