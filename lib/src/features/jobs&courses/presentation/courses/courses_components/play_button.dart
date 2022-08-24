import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:ea_kazi/src/utils/utils_exports.dart';
import 'package:flutter/material.dart';

class PlayButton extends StatelessWidget {
  const PlayButton({Key? key, this.color}) : super(key: key);

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.blockSizeVertical * 4,
      width: SizeConfig.blockSizeHorizontal * 8,
      decoration: BoxDecoration(
        color: AppColors.scaffoldBgColor,
        borderRadius: BorderRadius.circular(Sizes.p16),
      ),
      child: Icon(
        Icons.play_arrow,
        color: color,
      ),
    );
  }
}
