import 'package:ea_kazi/src/utils/utils_exports.dart';
import 'package:flutter/material.dart';
import 'package:ea_kazi/src/common/common_exports.dart';
import 'package:ea_kazi/src/constants/constants_exports.dart';

import 'messages_components/chats_list.dart';

class MessagesUIScreen extends StatelessWidget {
  const MessagesUIScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return EaKaziScaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: EaKaziAppBar(
          title: AppStrings.assessmentCourse,
          actions: [
            IconButton(
              onPressed: () => null, //TODO: WORK ON THIS
              icon: const Icon(
                Icons.add,
                color: AppColors.darkColor,
              ),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          gapH2,
          const SearchField(),
          gapH2,
          const ChatsList(),
        ],
      ),
    );
  }
}
