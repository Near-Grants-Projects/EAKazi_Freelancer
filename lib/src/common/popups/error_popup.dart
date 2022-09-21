import 'dart:ui';

import 'package:ea_kazi/src/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class ErrorPopup extends StatelessWidget {
  const ErrorPopup({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: Sizes.p4, sigmaY: Sizes.p4),
      child: Wrap(
        children: [
          Container(
            padding: const EdgeInsets.all(Sizes.p24),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Sizes.p16),
                topRight: Radius.circular(Sizes.p16),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                gapH12,
                Center(
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
