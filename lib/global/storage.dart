// ignore_for_file: constant_identifier_names

import 'package:get_storage/get_storage.dart';

class GlobalStorage {

  //App Settings
  static final _box = GetStorage();
  static  const String _APP_LANGUAGE = 'app_lang';
  static  const String _APP_THEME = 'app_theme';


  static void setAppLanguage(String? value) async {
    await _box.write(_APP_LANGUAGE, value);
  }

  static String? getAppLanguage() {
    return _box.read(_APP_LANGUAGE);
  }

  static void setAppTheme(bool? value) async {
    await _box.write(_APP_THEME, value);
  }

  static bool? getAppTheme() {
    return _box.read(_APP_THEME);
  }
}
