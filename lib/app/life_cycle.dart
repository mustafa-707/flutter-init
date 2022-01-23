import 'dart:developer';

import 'package:awreportadmin/app/main_app.dart';
import 'package:flutter/material.dart';

class AppLifecycleReactor extends StatefulWidget {
  const AppLifecycleReactor({Key? key}) : super(key: key);

  @override
  _AppLifecycleReactorState createState() => _AppLifecycleReactorState();
}

class _AppLifecycleReactorState extends State<AppLifecycleReactor>
    with WidgetsBindingObserver {
  bool _isInForeground = true;
  bool _isInBackground = true;

  @override
  void initState() {
    WidgetsBinding.instance?.addObserver(this);
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance?.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    // This variables will tell you the application State .
    _isInBackground = state == AppLifecycleState.paused;
    _isInForeground = state == AppLifecycleState.resumed;

    log("_isInForeground :::: $_isInForeground");
    log("_isInBackground :::: $_isInBackground");

    if (_isInBackground) {}
    if (_isInForeground) {}
  }

  @override
  Widget build(BuildContext context) {
    return const MainApp();
  }
}
