import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:ea_kazi/src/utils/utils_exports.dart';
import 'package:flutter/material.dart';

import 'messages_components/message_input_field.dart';
import 'messages_components/messages_list.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const CircleAvatar(
              backgroundColor: AppColors.white500,
              backgroundImage: AssetImage("assets/images/Avatar.png"),
            ),
            gapW4,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Mayowa Stacks",
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  Text(
                    "Employer",
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1!
                        .copyWith(color: AppColors.secondaryColor),
                  ),
                ],
              ),
            ),
          ],
        ),
        leading: BackButton(
          onPressed: () => null, //TODO: IMPLEMENT BACK BUTTON FUNCTIONALITY
          color: AppColors.darkColor,
        ),
      ),
      body: Column(
        children: const [
          MessagesList(),
          MessageInputField(),
        ],
      ),
    );
  }
}
