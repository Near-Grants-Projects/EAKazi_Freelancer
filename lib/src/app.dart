import 'package:ea_kazi/src/routes/router.gr.dart';
import 'package:ea_kazi/src/utils/utils_exports.dart';
import 'package:flutter/material.dart';

//TODO: REMEBER TO REMOVE VIDEOS FOLDER FROM ASSETS AND PUBSPEC
//TODO: IMPLEMENT API DATA IN REUSABLE WIDGET

class EaKazi extends StatelessWidget {
  EaKazi({Key? key}) : super(key: key);

  final appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    final theme = EaKaziTheme.lightTheme();
    return MaterialApp.router(
      theme: theme,
      debugShowCheckedModeBanner: false,
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
    );
  }
}
