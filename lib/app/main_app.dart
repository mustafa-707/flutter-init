import 'package:awreportadmin/app/route.dart';
import 'package:awreportadmin/app/scroll_behavior.dart';
import 'package:awreportadmin/utils/lang/lang_service.dart';
import 'package:awreportadmin/utils/theme/theme.dart';
import 'package:awreportadmin/utils/theme/theme_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
      title: 'Fire Beef',
      initialRoute: '/splashScreen',
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
      routingCallback: (value) {
        if (value?.current == '/splashScreen') {
        }
      },
    );
  }
}
