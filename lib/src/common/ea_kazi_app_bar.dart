
import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:flutter/material.dart';

class EaKaziAppBar extends StatelessWidget {
  const EaKaziAppBar({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        title,
        style: Theme.of(context).textTheme.headline6,
      ),
      leading: BackButton(
        color: AppColors.darkColor,
        onPressed: () => null,//TODO: CHANGE TO AUTO ROUTE BACK BUTTON
      ),
    );
  }
}
