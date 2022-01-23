import 'package:awreportadmin/pages/main_page.dart';
import 'package:awreportadmin/utils/theme/transition_helper.dart';
import 'package:get/get.dart';

final List<GetPage<dynamic>> routes = [
  GetPage(
    name: '/',
    page: () => const MainPage(),
    transition: TransitionHelper.normalTransition,
  ),
];
