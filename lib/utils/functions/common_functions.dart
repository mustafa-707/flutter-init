import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommonFunctions {
  static void backToHome() {
    if (Navigator.of(Get.context!).canPop()) {
      Get.back();
      backToHome();
    }
    return;
  }
}
