import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:ea_kazi/src/features/messages_ui_screen.dart/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MessageCard extends StatelessWidget {
  const MessageCard({
    Key? key,
    required this.name,
    required this.timeReceived,
    required this.numberOfUnreadMessages,
    required this.message,
  }) : super(key: key);

  final String name;
  final DateTime timeReceived;
  final int numberOfUnreadMessages;
  final String message;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => const ChatScreen(),
        ),
      ), //TODO: IMPLEMENT GO TO MESSAGE SCREEN USING AUTO ROUTE
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Row(
          children: [
            const CircleAvatar(
              radius: Sizes.p24,
              backgroundImage: AssetImage(
                "assets/images/face.jpg",
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: Sizes.p20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(name, style: Theme.of(context).textTheme.subtitle1),
                    Text(
                      message,
                      style: Theme.of(context).textTheme.subtitle2!.copyWith(
                            color: AppColors.secondaryColor,
                            fontSize: Sizes.p14,
                          ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                Text(
                  DateFormat(DateFormat.HOUR24_MINUTE).format(timeReceived),
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2!
                      .copyWith(color: AppColors.secondaryColor),
                ),
                Container(
                  height: Sizes.p24,
                  width: Sizes.p24,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Sizes.p24),
                    color: AppColors.blueColor.withOpacity(.2),
                  ),
                  child: Center(
                    child: Text(
                      numberOfUnreadMessages.toString(),
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
