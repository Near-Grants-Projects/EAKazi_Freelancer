import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_sizes.dart';

const kAnimationDuration = Duration(milliseconds: 200);

const kDefaultPadding = EdgeInsets.all(Sizes.p16);

final defaultBoxShadow = [
  BoxShadow(
    color: AppColors.secondaryColor.withOpacity(0.5),
    spreadRadius: Sizes.p2,
    blurRadius: Sizes.p4,
    offset: const Offset(Sizes.p0, Sizes.p4),
  ),
];
