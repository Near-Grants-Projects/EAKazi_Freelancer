// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:ea_kazi/src/constants/constants_exports.dart';

import 'ea_kazi_app_bar.dart';

class SuccefulScreen extends StatelessWidget {
  const SuccefulScreen({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: EaKaziAppBar(
          title: title,
          actions: [
            IconButton(
              onPressed: () => null, //TODO: WORK ON THIS
              icon: const Icon(
                Icons.more_vert_outlined,
                color: AppColors.darkColor,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Image.asset(AppAssetPaths.checkMarkImage),
          ),
          Text(
            AppStrings.successful,
            style: Theme.of(context).textTheme.headline6,
          ),
        ],
      ),
    );
  }
}
