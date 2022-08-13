import 'package:ea_kazi/src/features/messages_ui_screen.dart/messages_ui_screen.dart';
import 'package:ea_kazi/src/routes/router.gr.dart';
import 'package:ea_kazi/src/utils/utils_exports.dart';
import 'package:flutter/material.dart';


//TODO: REMEBER TO REMOVE VIDEOS FOLDER FROM ASSETS AND PUBSPEC

class EaKazi extends StatelessWidget {
  const EaKazi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();
    final theme = EaKaziTheme.lightTheme();
    return MaterialApp(
      theme: theme,
      debugShowCheckedModeBanner: false,
      home: MessagesUIScreen(),
      // routerDelegate: appRouter.delegate(),
      // routeInformationParser: appRouter.defaultRouteParser(),
    );
  }
}
