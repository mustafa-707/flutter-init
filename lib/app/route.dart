import 'package:wootasali/pages/main_page.dart';
import 'package:wootasali/pages/splash/splash_screen.dart';
import 'package:wootasali/utils/theme/transition_helper.dart';
import 'package:get/get.dart';

final List<GetPage<dynamic>> routes = [
  GetPage(
    name: '/',
    page: () => MainPage(),
    transition: TransitionHelper.normalTransition,
  ),
  GetPage(
    name: '/splash',
    page: () => SplashScreen(),
    transition: TransitionHelper.normalTransition,
  ),
];
