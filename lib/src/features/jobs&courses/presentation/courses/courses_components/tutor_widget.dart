import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:flutter/material.dart';

import 'tutor_logo.dart';

class TutorWidget extends StatelessWidget {
  const TutorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const TutorLogo(),
        gapW6,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Jelafrica",
              style: Theme.of(context).textTheme.headline6,
            ), //TODO: CHANGE TO API NAME
            Text(
              "Tutor",
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    color: AppColors.secondaryColor,
                  ),
            ), // TODO: CHANGE TO API TUTOR OR NOT
          ],
        )
      ],
    );
  }
}
