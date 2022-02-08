import 'package:flutter/services.dart';
import 'package:wootasali/app/route.dart';
import 'package:wootasali/app/scroll_behavior.dart';
import 'package:wootasali/utils/lang/lang_service.dart';
import 'package:wootasali/utils/theme/color_helper.dart';
import 'package:wootasali/utils/theme/theme.dart';
import 'package:wootasali/utils/theme/theme_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: AppThemes.light,
      darkTheme: AppThemes.dark,
      enableLog: true,
      themeMode: ThemeService.theme, // add this
      getPages: routes,
      locale: LocalizationService.locale,
      fallbackLocale: LocalizationService.fallbackLocale,
      translations: LocalizationService(),
      // locale: DevicePreview.locale(context), // Add the locale here
      // builder: DevicePreview.appBuilder, // Add the builder here
      title: 'Woo',
      initialRoute: '/splash',
      opaqueRoute: Get.isOpaqueRouteDefault,
      popGesture: Get.isPopGestureEnable,
      navigatorKey: Get.key,
      navigatorObservers: [GetObserver()],
      builder: (BuildContext? context, Widget? child) {
        final MediaQueryData data = MediaQuery.of(context!);
        child = MediaQuery(
          data: data.copyWith(textScaleFactor: 1.0),
          child: child!,
        );
        child = ScrollConfiguration(
          behavior: ScrollBehaviors(),
          child: child,
        );
        return child;
      },
      routingCallback: (value) async {
        if (value?.current == '/splash') {
          await FlutterStatusbarcolor.setStatusBarColor(Colors.transparent);
          await FlutterStatusbarcolor.setNavigationBarColor(
              ColorHelper.backgroundColor);
          const SystemUiOverlayStyle(
            systemNavigationBarColor: ColorHelper.backgroundColor,
            statusBarBrightness: Brightness.dark,
            statusBarIconBrightness: Brightness.dark,
            systemNavigationBarDividerColor: ColorHelper.backgroundColor,
            systemNavigationBarIconBrightness: Brightness.dark,
            statusBarColor: Colors.transparent,
            systemStatusBarContrastEnforced: true,
            systemNavigationBarContrastEnforced: true,
          );
        }
      },
    );
  }
}
