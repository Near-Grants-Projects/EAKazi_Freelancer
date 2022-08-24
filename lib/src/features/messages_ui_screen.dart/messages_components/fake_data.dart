
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
