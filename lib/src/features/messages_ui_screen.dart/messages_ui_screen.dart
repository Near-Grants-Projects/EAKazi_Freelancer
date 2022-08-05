import 'package:flutter/material.dart';
import 'package:ea_kazi/src/common/common_exports.dart';
import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:ea_kazi/src/utils/size_config.dart';
import 'package:intl/intl.dart';

class MessagesUIScreen extends StatelessWidget {
  const MessagesUIScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return EaKaziScaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () => null, //TODO: WORK ON THIS
            icon: const Icon(
              Icons.add,
              color: AppColors.darkColor,
            ),
          )
        ],
        title: Text(
          AppStrings.messages,
          style: Theme.of(context).textTheme.headline6,
        ),
        leading: BackButton(
          onPressed: () => null, //TODO: IMPLEMENT BACK BUTTON FUNCTIONALITY
          color: AppColors.darkColor,
        ),
      ),
      body: Padding(
        padding: kDefaultPadding,
        child: Column(
          children: [
            gapH2,
            const SearchField(),
            gapH2,
            ListView.separated(
              primary: false,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: messageData.length,
              separatorBuilder: (_, index) => const Divider(
                color: Color(0xFFEFF1F7), // TODO: WORK ON THIS
              ),
              itemBuilder: (context, index) => MessageCard(
                name: messageData[index].senderName,
                timeReceived: messageData[index].timeReceived,
                numberOfUnreadMessages: messageData[index].unreadMessages,
                message: messageData[index].message,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
      onTap: () => Null, //TODO: IMPLEMENT GO TO MESSAGE SCREEN
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

List<Message> messageData = [
  Message(
    senderName: "Obi Derrick",
    message:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus sollicitudin nibh sem. Etiam at tempus libero. Duis eget hendrerit justo. Aenean rutrum sapien eget sem scelerisque dictum. Curabitur ac finibus augue. Aliquam et egestas magna, eget accumsan nibh.",
    imagePath: "assets/images/face.jpg",
    unreadMessages: 2,
    timeReceived: DateTime.now(),
  ),
  Message(
    senderName: "Obi Derrick",
    message:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus sollicitudin nibh sem. Etiam at tempus libero. Duis eget hendrerit justo. Aenean rutrum sapien eget sem scelerisque dictum. Curabitur ac finibus augue. Aliquam et egestas magna, eget accumsan nibh.",
    imagePath: "assets/images/face.jpg",
    unreadMessages: 2,
    timeReceived: DateTime.now(),
  ),
  Message(
    senderName: "Obi Derrick",
    message:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus sollicitudin nibh sem. Etiam at tempus libero. Duis eget hendrerit justo. Aenean rutrum sapien eget sem scelerisque dictum. Curabitur ac finibus augue. Aliquam et egestas magna, eget accumsan nibh.",
    imagePath: "assets/images/face.jpg",
    unreadMessages: 2,
    timeReceived: DateTime.now(),
  ),
  Message(
    senderName: "Obi Derrick",
    message:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus sollicitudin nibh sem. Etiam at tempus libero. Duis eget hendrerit justo. Aenean rutrum sapien eget sem scelerisque dictum. Curabitur ac finibus augue. Aliquam et egestas magna, eget accumsan nibh.",
    imagePath: "assets/images/face.jpg",
    unreadMessages: 2,
    timeReceived: DateTime.now(),
  ),
  Message(
    senderName: "Obi Derrick",
    message:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus sollicitudin nibh sem. Etiam at tempus libero. Duis eget hendrerit justo. Aenean rutrum sapien eget sem scelerisque dictum. Curabitur ac finibus augue. Aliquam et egestas magna, eget accumsan nibh.",
    imagePath: "assets/images/face.jpg",
    unreadMessages: 2,
    timeReceived: DateTime.now(),
  ),
  Message(
    senderName: "Obi Derrick",
    message:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus sollicitudin nibh sem. Etiam at tempus libero. Duis eget hendrerit justo. Aenean rutrum sapien eget sem scelerisque dictum. Curabitur ac finibus augue. Aliquam et egestas magna, eget accumsan nibh.",
    imagePath: "assets/images/face.jpg",
    unreadMessages: 2,
    timeReceived: DateTime.now(),
  ),
  Message(
    senderName: "Obi Derrick",
    message:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus sollicitudin nibh sem. Etiam at tempus libero. Duis eget hendrerit justo. Aenean rutrum sapien eget sem scelerisque dictum. Curabitur ac finibus augue. Aliquam et egestas magna, eget accumsan nibh.",
    imagePath: "assets/images/face.jpg",
    unreadMessages: 2,
    timeReceived: DateTime.now(),
  ),
  Message(
    senderName: "Obi Derrick",
    message:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus sollicitudin nibh sem. Etiam at tempus libero. Duis eget hendrerit justo. Aenean rutrum sapien eget sem scelerisque dictum. Curabitur ac finibus augue. Aliquam et egestas magna, eget accumsan nibh.",
    imagePath: "assets/images/face.jpg",
    unreadMessages: 2,
    timeReceived: DateTime.now(),
  ),
  Message(
    senderName: "Obi Derrick",
    message:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus sollicitudin nibh sem. Etiam at tempus libero. Duis eget hendrerit justo. Aenean rutrum sapien eget sem scelerisque dictum. Curabitur ac finibus augue. Aliquam et egestas magna, eget accumsan nibh.",
    imagePath: "assets/images/face.jpg",
    unreadMessages: 2,
    timeReceived: DateTime.now(),
  ),
  Message(
    senderName: "Obi Derrick",
    message:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus sollicitudin nibh sem. Etiam at tempus libero. Duis eget hendrerit justo. Aenean rutrum sapien eget sem scelerisque dictum. Curabitur ac finibus augue. Aliquam et egestas magna, eget accumsan nibh.",
    imagePath: "assets/images/face.jpg",
    unreadMessages: 2,
    timeReceived: DateTime.now(),
  ),
  Message(
    senderName: "Obi Derrick",
    message:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus sollicitudin nibh sem. Etiam at tempus libero. Duis eget hendrerit justo. Aenean rutrum sapien eget sem scelerisque dictum. Curabitur ac finibus augue. Aliquam et egestas magna, eget accumsan nibh.",
    imagePath: "assets/images/face.jpg",
    unreadMessages: 2,
    timeReceived: DateTime.now(),
  ),
  Message(
    senderName: "Obi Derrick",
    message:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus sollicitudin nibh sem. Etiam at tempus libero. Duis eget hendrerit justo. Aenean rutrum sapien eget sem scelerisque dictum. Curabitur ac finibus augue. Aliquam et egestas magna, eget accumsan nibh.",
    imagePath: "assets/images/face.jpg",
    unreadMessages: 2,
    timeReceived: DateTime.now(),
  ),
];

class Message {
  final String senderName;
  final String message;
  final String imagePath;
  final int unreadMessages;
  final DateTime timeReceived;

  const Message({
    required this.senderName,
    required this.message,
    required this.imagePath,
    required this.unreadMessages,
    required this.timeReceived,
  });
}
