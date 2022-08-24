import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:flutter/material.dart';

class PaddedText extends StatelessWidget {
  const PaddedText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Sizes.p16),
      child: Text(
        text,
        style: Theme.of(context).textTheme.subtitle1!.copyWith(
              color: AppColors.blue700,
            ),
      ),
    );
  }
}
