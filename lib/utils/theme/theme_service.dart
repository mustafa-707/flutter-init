import 'package:awreportadmin/global/storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeService {

  /// Get isDarkMode info from local storage and return ThemeMode
  static ThemeMode get theme => _loadThemeFromBox() ? ThemeMode.dark : ThemeMode.light;

  /// Load isDArkMode from local storage and if it's empty, returns false (that means default theme is light)
  static bool _loadThemeFromBox() => GlobalStorage.getAppTheme() ?? false;

  /// Save isDarkMode to local storage
  static _saveThemeToBox(bool isDarkMode) => GlobalStorage.setAppTheme(isDarkMode);

  /// Switch theme and save to local storage
  static void switchTheme() {
    Get.changeThemeMode(_loadThemeFromBox() ? ThemeMode.light : ThemeMode.dark);
    _saveThemeToBox(!_loadThemeFromBox());
  }
}
