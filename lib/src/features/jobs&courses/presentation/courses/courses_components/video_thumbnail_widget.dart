import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:ea_kazi/src/utils/utils_exports.dart';
import 'package:flutter/material.dart';

import 'play_button.dart';

class VideoThumbNailWidget extends StatelessWidget {
  const VideoThumbNailWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(
        Sizes.p10,
      ),
      child: SizedBox(
        height: double.infinity,
        width: SizeConfig.blockSizeHorizontal * Sizes.p32,
        child: Stack(
          children: [
            //TODO: REMEBER TO REMOVE THIS COLOR DURING API IMPLEMENTATION
            Container(
              color: Colors.redAccent,
            ),
            const Align(
              alignment: Alignment.center,
              child: PlayButton(
                color: Colors.redAccent,
              ),
            )
          ],
        ),
      ),
    );
  }
}
