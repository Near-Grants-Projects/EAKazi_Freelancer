import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:ea_kazi/src/utils/utils_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
              backgroundColor: Color(0xFFEFF1F7),
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
        children: [
          Expanded(
            child: Padding(
              padding: kDefaultPadding,
              child: ListView.builder(
                itemCount: demoChatMessages.length,
                itemBuilder: (context, index) => MessageBubble(
                  message: demoChatMessages[index],
                ),
              ),
            ),
          ),
          const ChatInputField(),
        ],
      ),
    );
  }
}

class ChatMessage {
  final String text;
  final bool isSender;

  ChatMessage({
    this.text = '',
    required this.isSender,
  });
}

List demoChatMessages = [
  ChatMessage(
    text:
        "To apply for this job you need to take the assessment course, pass the quiz and get a certificate to proove proficiency.",
    isSender: false,
  ),
  ChatMessage(
    text: "What do you mean?",
    isSender: true,
  ),
  ChatMessage(
    text:
        "You have to first pass the qualification assessments before you can apply for the job.",
    isSender: false,
  ),
  ChatMessage(
    text: "I understand now. Thanks",
    isSender: true,
  ),
];

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
      margin: const EdgeInsets.only(top: 16),
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

class ChatInputField extends StatelessWidget {
  const ChatInputField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(
        horizontal: Sizes.p20,
        vertical: Sizes.p10,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: Sizes.p8,
        vertical: Sizes.p4,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.darkColor),
        borderRadius: BorderRadius.circular(Sizes.p10)
      ),
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
