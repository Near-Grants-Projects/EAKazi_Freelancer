import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:flutter/material.dart';

import 'fake_data.dart';
import 'message_bubble.dart';

class MessagesList extends StatelessWidget {
  const MessagesList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: AppConstants.kDefaultPadding,
        child: ListView.builder(
          itemCount: demoChatMessages.length,
          itemBuilder: (context, index) => MessageBubble(
            message: demoChatMessages[index],
          ),
        ),
      ),
    );
  }
}
