// import 'package:ea_kazi/src/features/authentication/courses/course_detail_screen.dart';
import 'package:ea_kazi/src/utils/utils_exports.dart';
import 'package:flutter/material.dart';

import 'features/home/home_screen.dart';

// import 'features/authentication/sign_in/sign_in_screen.dart';
// import 'features/authentication/sign_in/sign_up_screen.dart';

class EaKazi extends StatelessWidget {
  const EaKazi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = EaKaziTheme.lightTheme();
    return MaterialApp(
      theme: theme,
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
