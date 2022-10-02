import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccountCheck extends StatelessWidget {
  const AlreadyHaveAccountCheck({
    Key? key,
    required this.accountCheckTitle,
    required this.accountCheckNavText,
    required this.onPressed,
  }) : super(key: key);

  final String accountCheckTitle;
  final String accountCheckNavText;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: Theme.of(context)
            .textTheme
            .overline!
            .copyWith(fontSize: Sizes.p14, color: AppColors.secondaryColor),
        children: [
          TextSpan(text: accountCheckTitle),
          TextSpan(
            text: accountCheckNavText,
            style: Theme.of(context).textTheme.overline?.copyWith(
                  fontSize: Sizes.p14,
                  color: AppColors.blueColor,
                ),
            recognizer: TapGestureRecognizer()..onTap = onPressed,
          ),
        ],
      ),
    );
  }
}
