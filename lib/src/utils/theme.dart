import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//TODO: REMINDER TO WORK ON THIS FILE

class EaKaziTheme {
  static TextTheme _buildEaKaziTextTheme(TextTheme base) {
    return GoogleFonts.poppinsTextTheme(
      base
          .copyWith(
            headline1: base.headline1!.copyWith(
              fontWeight: FontWeight.w300,
              fontSize: 96,
            ),
            headline2: base.headline2!.copyWith(
              fontWeight: FontWeight.w400,
              fontSize: 60,
            ),
            headline3: base.headline3!.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 48,
            ),
            headline4: base.headline4!.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 34,
            ),
            headline5: base.headline5!.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 24,
            ),
            headline6: base.headline6!.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
            subtitle1: base.subtitle1!.copyWith(
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
            subtitle2: base.subtitle2!.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 12,
            ),
            bodyText1: base.bodyText1!.copyWith(
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
            bodyText2: base.bodyText2!.copyWith(
              fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
            button: base.button!.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 13,
            ),
            caption: base.caption!.copyWith(
              fontWeight: FontWeight.w500,
              fontSize: 12,
            ),
            overline: base.overline!.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 12,
            ),
          )
          .apply(
              bodyColor: AppColors.darkColor,
              displayColor: AppColors.darkColor),
    );
  }

  static ThemeData lightTheme() {
    return ThemeData(
      // appBarTheme: const AppBarTheme(
      //   systemOverlayStyle: SystemUiOverlayStyle.dark,
      //   backgroundColor: AppColors.scaffoldBgColor,
      //   elevation: 0,
      // ),
      textTheme: _buildEaKaziTextTheme(ThemeData.light().textTheme),
      // primaryColor: AppColors.travexPrimaryColor,
      // primaryIconTheme: _customIconTheme(ThemeData.light().iconTheme),
      scaffoldBackgroundColor: AppColors.scaffoldBgColor, // TODO:
      primaryTextTheme:
          _buildEaKaziTextTheme(ThemeData.light().primaryTextTheme),
    );
  }
}

// colorScheme: _googleChatColorScheme
// ),
// static const ColorScheme _googleChatColorScheme = ColorScheme(
//   primary: AppColors.googleChatPrimaryColor,
//   primaryContainer: AppColors.googleChatTextColorDark,
//   secondary: AppColors.googleChatPrimaryColor,
//   secondaryContainer: AppColors.googleChatTextColorDark,
//   surface: AppColors.googleChatTextColorDark,
//   background: AppColors.googleChatBackgroundDark,
//   error: Colors.redAccent,
//   onPrimary: AppColors.googleChatBlue100,
//   onSecondary: AppColors.googleChatTextColorDark,
//   onSurface: AppColors.googleChatTextColorDark,
//   onBackground: AppColors.googleChatTextColorDark,
//   onError: AppColors.googleChatBlue100,
//   brightness: Brightness.light,
// );
