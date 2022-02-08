import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wootasali/common/app_bar_lines.dart';
import 'package:wootasali/utils/lang/lang_service.dart';
import 'package:wootasali/utils/theme/color_helper.dart';
import 'package:wootasali/utils/theme/images_helper.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainAppBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: InkWell(
        hoverColor: Colors.transparent,
        overlayColor: MaterialStateProperty.all(Colors.transparent),
        focusColor: Colors.transparent,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () {
          if (Get.currentRoute != "/") {
            Get.offAllNamed("/");
          }
        },
        child: Container(
          padding: EdgeInsets.only(
            left: LocalizationService.isArabic ? 3.0 : 17.0,
            right: LocalizationService.isArabic ? 17.0 : 3.0,
            top: 5,
          ),
          width: 200,
          child: Image.asset(LocalizationService.isArabic
              ? ImageHelper.logo
              : ImageHelper.logoEn),
        ),
      ),
      actions: [
        InkWell(
          hoverColor: Colors.transparent,
          overlayColor: MaterialStateProperty.all(Colors.transparent),
          focusColor: Colors.transparent,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          child: Image.asset(
            LocalizationService.isArabic
                ? ImageHelper.tireEn
                : ImageHelper.tire,
            width: 46,
            height: 46,
          ),
          onTap: () {},
        ),
        const SizedBox(
          width: 10,
        ),
      ],
      leadingWidth: Get.width * 0.4,
      backgroundColor: ColorHelper.backgroundColor,
      toolbarHeight: 55,
      centerTitle: true,
      bottom: const AppBarLines(),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(90);
}
