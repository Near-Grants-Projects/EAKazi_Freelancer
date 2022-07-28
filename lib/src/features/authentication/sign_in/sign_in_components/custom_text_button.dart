
import 'package:flutter/material.dart';

import '../../../../constants/constants_exports.dart';
import '../../../../utils/utils_exports.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    Key? key,
    required this.buttonText,
    required this.onPressed,
  }) : super(key: key);

  final String buttonText;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.blockSizeVertical * Sizes.p6,
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          buttonText,
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
            color: AppColors.secondaryColor
          ),
          textAlign: TextAlign.left,
        ),
      ),
    );
  }
}
