import 'package:flutter/material.dart';
import 'package:ea_kazi/src/constants/constants_exports.dart';

class EaKaziAppBar extends StatelessWidget {
  const EaKaziAppBar({
    Key? key,
    required this.title,
    this.actions,
  }) : super(key: key);

  final String title;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      actions: actions,
      title: Text(
        title,
        style: Theme.of(context).textTheme.headline6,
      ),
      leading: BackButton(
        color: AppColors.darkColor,
        onPressed: () => null, //TODO: CHANGE TO AUTO ROUTE BACK BUTTON
      ),
    );
  }
}
