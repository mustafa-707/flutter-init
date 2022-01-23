import 'dart:async';
import 'dart:isolate';
import 'package:awreportadmin/app/life_cycle.dart';
import 'package:awreportadmin/global/pre_cached.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';



main() async {
  runZonedGuarded<Future<void>>(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
    FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
    Isolate.current.addErrorListener(RawReceivePort((pair) async {
      final List<dynamic> errorAndStacktrace = pair;
      await FirebaseCrashlytics.instance.recordError(
        errorAndStacktrace.first,
        errorAndStacktrace.last,
      );
    }).sendPort);

    await GetStorage.init();
    PreCacheData.preCachedSvgs();

    runApp(
      // DevicePreview(
      //   enabled: !kReleaseMode,
      //   builder: (context) =>
      const AppLifecycleReactor(),
      // ),
    );
  }, (error, stack) => FirebaseCrashlytics.instance.recordError(error, stack));
}
