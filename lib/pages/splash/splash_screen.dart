import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wootasali/common/progress_index.dart';
import 'package:wootasali/pages/splash/controller/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);
  final SplashController homeController = Get.put(SplashController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          WooProgressIndicator(),
        ],
      ),
    );
  }
}
