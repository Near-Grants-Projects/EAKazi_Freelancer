import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:flutter/material.dart';

import 'fake_data.dart';

class MessageBubble extends StatelessWidget {
  const MessageBubble({
    Key? key,
    required this.message,
  }) : super(key: key);

  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: Sizes.p16),
      padding: kDefaultPadding,
      decoration: BoxDecoration(
        color: !message.isSender
            ? const Color(0xFF2F69FE)
            : const Color(0xFFEFF1F7),
        borderRadius: !message.isSender
            ? const BorderRadius.only(
                topRight: Radius.circular(Sizes.p20),
                bottomRight: Radius.circular(Sizes.p20),
                bottomLeft: Radius.circular(Sizes.p20),
              )
            : const BorderRadius.only(
                topLeft: Radius.circular(Sizes.p20),
                bottomLeft: Radius.circular(Sizes.p20),
                bottomRight: Radius.circular(Sizes.p20),
              ),
      ),
      child: Text(
        message.text,
        textAlign: TextAlign.left,
        style: Theme.of(context).textTheme.bodyText2!.copyWith(
              color: !message.isSender
                  ? AppColors.scaffoldBgColor
                  : AppColors.darkColor,
            ),
      ),
    );
  }
}
