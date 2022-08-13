import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:flutter/material.dart';

import 'fake_data.dart';
import 'message_card.dart';

class ChatsList extends StatelessWidget {
  const ChatsList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kDefaultPadding,
      child: ListView.separated(
        primary: false,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: messageData.length,
        separatorBuilder: (_, index) => const Divider(
          color: AppColors.white700,
        ),
        itemBuilder: (context, index) => MessageCard(
          name: messageData[index].senderName,
          timeReceived: messageData[index].timeReceived,
          numberOfUnreadMessages: messageData[index].unreadMessages,
          message: messageData[index].message,
        ),
      ),
    );
  }
}
