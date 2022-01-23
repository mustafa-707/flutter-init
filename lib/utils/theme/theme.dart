import 'package:awreportadmin/utils/lang/lang_service.dart';
import 'package:awreportadmin/utils/theme/color_helper.dart';
import 'package:flutter/material.dart';

class AppThemes {
  static final light = ThemeData.light().copyWith(
    backgroundColor: ColorHelper.backgroundColor,
    scaffoldBackgroundColor: ColorHelper.backgroundColor,
    textTheme: TextTheme(
      headline1: LocalizationService.fontfamilyByLocale,
      headline2: LocalizationService.fontfamilyByLocale,
      headline3: LocalizationService.fontfamilyByLocale,
      headline4: LocalizationService.fontfamilyByLocale,
      headline5: LocalizationService.fontfamilyByLocale,
      headline6: LocalizationService.fontfamilyByLocale,
      subtitle1: LocalizationService.fontfamilyByLocale,
      subtitle2: LocalizationService.fontfamilyByLocale,
      bodyText1: LocalizationService.fontfamilyByLocale,
      bodyText2: LocalizationService.fontfamilyByLocale,
      caption: LocalizationService.fontfamilyByLocale,
      button: LocalizationService.fontfamilyByLocale,
      overline: LocalizationService.fontfamilyByLocale,
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: ColorHelper.secondaryColor,
    ),
  );
  static final dark = ThemeData.dark().copyWith(
    backgroundColor: ColorHelper.backgroundColor,
    scaffoldBackgroundColor: ColorHelper.backgroundColor,
    textTheme: TextTheme(
      headline1: LocalizationService.fontfamilyByLocale,
      headline2: LocalizationService.fontfamilyByLocale,
      headline3: LocalizationService.fontfamilyByLocale,
      headline4: LocalizationService.fontfamilyByLocale,
      headline5: LocalizationService.fontfamilyByLocale,
      headline6: LocalizationService.fontfamilyByLocale,
      subtitle1: LocalizationService.fontfamilyByLocale,
      subtitle2: LocalizationService.fontfamilyByLocale,
      bodyText1: LocalizationService.fontfamilyByLocale,
      bodyText2: LocalizationService.fontfamilyByLocale,
      caption: LocalizationService.fontfamilyByLocale,
      button: LocalizationService.fontfamilyByLocale,
      overline: LocalizationService.fontfamilyByLocale,
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: ColorHelper.secondaryColor,
    ),
  );
}
