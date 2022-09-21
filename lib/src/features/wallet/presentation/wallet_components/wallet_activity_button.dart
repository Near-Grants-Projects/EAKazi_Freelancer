import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:ea_kazi/src/utils/utils_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WalletActivityButton extends StatelessWidget {
  const WalletActivityButton({
    Key? key,
    required this.assetPath,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  final String assetPath;
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPressed,
      child: Column(
        children: [
          Container(
            padding: AppConstants.kDefaultPadding / Sizes.p2,
            height: SizeConfig.blockSizeVertical * Sizes.p8,
            width: SizeConfig.blockSizeHorizontal * Sizes.p16,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Sizes.p48),
              color: AppColors.lightBlueColor,
            ),
            child: Center(
              child: SvgPicture.asset(assetPath),
            ),
          ),
          Text(
            text,
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ],
      ),
    );
  }
}
