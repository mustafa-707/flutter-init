import 'dart:async';
import 'package:get/get.dart';

class SplashController extends GetxController {
  int splashTime = 1200;

  int tokenCounterAttempt = 0;

  void isSplashDoneTime() {
    Future.delayed(Duration(milliseconds: splashTime), () {
      Get.offAllNamed("/");
    });
  }

  @override
  void onInit() {
    isSplashDoneTime();
    super.onInit();
  }
}
