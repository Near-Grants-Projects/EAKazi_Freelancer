import 'package:flutter/material.dart';

import '../constants/constants_exports.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    required this.text,
    this.onPressed,
    this.isLoading = false,
    this.onSurfaceColor = AppColors.blueColor,
  }) : super(key: key);

  final String text;
  final bool isLoading;
  final VoidCallback? onPressed;
  final Color onSurfaceColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          onSurface: onSurfaceColor,
          padding: AppConstants.kDefaultPadding,
        ),
        child: isLoading
            ? const CircularProgressIndicator()
            : Text(
                text,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline6!.copyWith(
                      color: AppColors.scaffoldBgColor,
                    ),
              ),
      ),
    );
  }
}
