import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:wootasali/app/life_cycle.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const AppLifecycleReactor());
}
