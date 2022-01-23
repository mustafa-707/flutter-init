import 'package:awreportadmin/global/storage.dart';
import 'package:awreportadmin/utils/lang/ar.dart';
import 'package:awreportadmin/utils/lang/en.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class LocalizationService extends Translations {
  
  // Default locale
  static final locale = GlobalStorage.getAppLanguage() == 'English'
      ? primaryLocale
      : fallbackLocale;

  // fallbackLocale saves the day when the locale gets in trouble
  static const primaryLocale = Locale('en', 'US');

  // fallbackLocale saves the day when the locale gets in trouble
  static const fallbackLocale = Locale('ar', 'AR');

  // Supported languages
  // Needs to be same order with locales
  static const langs = [
    'English',
    'العربية',
  ];

  // Supported locales
  // Needs to be same order with langs
  static const locales = [
    Locale('en', 'US'),
    Locale('ar', 'AR'),
  ];

  // Keys and their translations
  // Translations are separated maps in `lang` file
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': enUS, // lang/en.dart
        'ar_AR': arAR, // lang/ar.dart
      };

  // Gets locale from language, and updates the locale
  static void changeLocale(String lang) {
    late Locale? locale = _getLocaleFromLanguage(lang);
    Get.updateLocale(locale!);
  }

  // Finds language in `langs` list and returns it as Locale
  static Locale? _getLocaleFromLanguage(String lang) {
    for (int i = 0; i < langs.length; i++) {
      if (lang == langs[i]) return locales[i];
    }
    return Get.locale;
  }

  static TextStyle get fontfamilyByLocale {
    if (Get.locale == const Locale('ar', 'AR')) {
      return GoogleFonts.lato();
    } else {
      return GoogleFonts.lato();
    }
  }

  static bool get isArabic {
    if (Get.locale == const Locale('ar', 'AR')) {
      return true;
    } else {
      return false;
    }
  }

  static bool get isEnglish {
    if (Get.locale == const Locale('en', 'US')) {
      return true;
    } else {
      return false;
    }
  }

  static String arabicTimeAgo(DateTime date) {
    Duration diff = DateTime.now().difference(date);
    if (diff.inSeconds <= 5) {
      return 'الآن'.tr;
    } else if (diff.inSeconds < 60) {
      return 'أقل من دقيقة';
    } else if (diff.inSeconds < 120) {
      return 'منذ دقيقة';
    } else if (diff.inSeconds < 180) {
      return 'منذ دقيقتين';
    } else if (diff.inMinutes < 11) {
      return 'منذ ${diff.inMinutes} دقيقة';
    } else if (diff.inMinutes < 60) {
      return 'منذ ${diff.inMinutes} دقائق';
    } else if (diff.inMinutes < 120) {
      return 'منذ ساعة';
    } else if (diff.inMinutes < 180) {
      return 'منذ ساعتين';
    } else if (diff.inHours < 11) {
      return 'منذ ${diff.inHours} ساعات';
    } else if (diff.inHours < 24) {
      return 'منذ ${diff.inHours} ساعة';
    } else if (diff.inDays < 2) {
      return 'منذ يوم';
    } else if (diff.inDays < 3) {
      return "منذ يومين";
    } else {
      final dateFormat =  DateFormat('dd-MM-yyyy');
      return dateFormat.format(date);
    }
  }

  static String englishTimeAgo(DateTime date) {
    Duration diff = DateTime.now().difference(date);
    if (diff.inSeconds <= 5) {
      return 'Now'.tr;
    } else if (diff.inSeconds < 60) {
      return 'Less one min';
    } else if (diff.inSeconds < 120) {
      return 'one min later';
    } else if (diff.inSeconds < 180) {
      return 'two min later';
    } else if (diff.inMinutes < 60) {
      return '${diff.inMinutes} mins';
    } else if (diff.inMinutes < 120) {
      return 'one hour later';
    } else if (diff.inMinutes < 180) {
      return 'two hours later';
    } else if (diff.inHours < 24) {
      return '${diff.inHours} hours';
    } else if (diff.inDays < 2) {
      return 'one day later';
    } else if (diff.inDays < 3) {
      return "two days later";
    } else {
      final dateFormat = DateFormat('dd-MM-yyyy');
      return 'at ' + dateFormat.format(date);
    }
  }
}
