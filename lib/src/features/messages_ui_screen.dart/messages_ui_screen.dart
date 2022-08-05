import 'package:ea_kazi/src/common/common_exports.dart';
import 'package:ea_kazi/src/constants/app_strings.dart';
import 'package:flutter/material.dart';

class MessagesUIScreen extends StatelessWidget {
  const MessagesUIScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EaKaziScaffold(
      title: AppStrings.messages,
      body: Column(
        children: [

        ],
      ),
    );
  }
}
