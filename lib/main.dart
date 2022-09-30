import 'package:ea_kazi/src/constants/app_colors.dart';
import 'package:ea_kazi/src/utils/ea_kazi_secure_storage.dart/ea_kazi_secure_storage.dart';
import 'package:ea_kazi/src/utils/injectable/injectable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'src/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  EaKaziSecureStorage.init();

  configureDependencies();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: AppColors.darkColor,
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
  );

  runApp(
    EaKazi(),
  );
}
