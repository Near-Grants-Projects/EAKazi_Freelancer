import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MessageInputField extends StatelessWidget {
  const MessageInputField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(
        horizontal: Sizes.p16,
        vertical: Sizes.p10,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: Sizes.p8,
        vertical: Sizes.p4,
      ),
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.darkColor),
          borderRadius: BorderRadius.circular(Sizes.p10)),
      child: Row(
        children: [
          const Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: AppStrings.inputFieldHintMessage,
                border: InputBorder.none,
              ),
            ),
          ),
          IconButton(
            onPressed: () => null, //TODO: WORK ON THIS
            icon: const Icon(Icons.emoji_emotions_outlined),
          ),
          InkWell(
            onTap: () => null, //TODO: WORK ON THIS
            child: Container(
              padding: const EdgeInsets.all(Sizes.p6),
              decoration: BoxDecoration(
                color: AppColors.blueColor,
                borderRadius: BorderRadius.circular(Sizes.p6),
              ),
              child: Center(
                child: SvgPicture.asset(AppAssetPaths.sendBtn),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
