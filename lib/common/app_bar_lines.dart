import 'package:flutter/material.dart';
import 'package:wootasali/utils/lang/lang_service.dart';
import 'package:wootasali/utils/theme/color_helper.dart';
import 'package:wootasali/utils/theme/images_helper.dart';

class AppBarLines extends StatelessWidget implements PreferredSizeWidget {
  const AppBarLines({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 3,
          color: ColorHelper.primaryColor,
        ),
        const SizedBox(
          height: 2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              child: GestureDetector(
                child: Image.asset(
                  LocalizationService.isArabic
                      ? ImageHelper.barEn
                      : ImageHelper.bar,
                  height: 24,
                  width: 28,
                ),
                onTap: () {},
              ),
            ),
            const SizedBox(
              width: 12,
            ),
          ],
        ),
        const SizedBox(
          height: 2,
        ),
        Container(
          height: 3,
          color: ColorHelper.primaryColor,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80);
}
