import 'package:ea_kazi/src/features/messages_ui_screen.dart/chat_screen.dart';
import 'package:ea_kazi/src/utils/utils_exports.dart';
import 'package:flutter/material.dart';

class EaKazi extends StatelessWidget {
  const EaKazi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = EaKaziTheme.lightTheme();
    return MaterialApp(
      theme: theme,
      debugShowCheckedModeBanner: false,
      home: const ChatScreen(),
    );
  }
}
