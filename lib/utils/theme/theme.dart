import 'package:flutter/material.dart';
import 'package:wootasali/utils/lang/lang_service.dart';
import 'package:wootasali/utils/theme/color_helper.dart';

class AppThemes {
  static final light = ThemeData.light().copyWith(
    backgroundColor: ColorHelper.backgroundColor,
    scaffoldBackgroundColor: ColorHelper.backgroundColor,
    textTheme: TextTheme(
      headline1: TextStyle(fontFamily: LocalizationService.fontfamilyByLocale),
      headline2: TextStyle(fontFamily: LocalizationService.fontfamilyByLocale),
      headline3: TextStyle(fontFamily: LocalizationService.fontfamilyByLocale),
      headline4: TextStyle(fontFamily: LocalizationService.fontfamilyByLocale),
      headline5: TextStyle(fontFamily: LocalizationService.fontfamilyByLocale),
      headline6: TextStyle(fontFamily: LocalizationService.fontfamilyByLocale),
      subtitle1: TextStyle(fontFamily: LocalizationService.fontfamilyByLocale),
      subtitle2: TextStyle(fontFamily: LocalizationService.fontfamilyByLocale),
      bodyText1: TextStyle(fontFamily: LocalizationService.fontfamilyByLocale),
      bodyText2: TextStyle(fontFamily: LocalizationService.fontfamilyByLocale),
      caption: TextStyle(fontFamily: LocalizationService.fontfamilyByLocale),
      button: TextStyle(fontFamily: LocalizationService.fontfamilyByLocale),
      overline: TextStyle(fontFamily: LocalizationService.fontfamilyByLocale),
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: ColorHelper.secondaryColor,
    ),
  );
  static final dark = ThemeData.dark().copyWith(
    backgroundColor: ColorHelper.backgroundColor,
    scaffoldBackgroundColor: ColorHelper.backgroundColor,
    textTheme: TextTheme(
      headline1: TextStyle(fontFamily: LocalizationService.fontfamilyByLocale),
      headline2: TextStyle(fontFamily: LocalizationService.fontfamilyByLocale),
      headline3: TextStyle(fontFamily: LocalizationService.fontfamilyByLocale),
      headline4: TextStyle(fontFamily: LocalizationService.fontfamilyByLocale),
      headline5: TextStyle(fontFamily: LocalizationService.fontfamilyByLocale),
      headline6: TextStyle(fontFamily: LocalizationService.fontfamilyByLocale),
      subtitle1: TextStyle(fontFamily: LocalizationService.fontfamilyByLocale),
      subtitle2: TextStyle(fontFamily: LocalizationService.fontfamilyByLocale),
      bodyText1: TextStyle(fontFamily: LocalizationService.fontfamilyByLocale),
      bodyText2: TextStyle(fontFamily: LocalizationService.fontfamilyByLocale),
      caption: TextStyle(fontFamily: LocalizationService.fontfamilyByLocale),
      button: TextStyle(fontFamily: LocalizationService.fontfamilyByLocale),
      overline: TextStyle(fontFamily: LocalizationService.fontfamilyByLocale),
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: ColorHelper.secondaryColor,
    ),
  );
}
