import 'package:flutter/material.dart';
import 'package:wootasali/utils/lang/lang_service.dart';
import 'package:wootasali/utils/theme/color_helper.dart';
import 'package:wootasali/utils/theme/images_helper.dart';

class ArrowTitleWidget extends StatelessWidget {
  const ArrowTitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "ABBBB CARS",
            style: TextStyle(
              color: ColorHelper.primaryColor,
              fontSize: 28,
            ),
          ),
          Image.asset(
            LocalizationService.isArabic
                ? ImageHelper.backEn
                : ImageHelper.back,
            width: 42,
          )
        ],
      ),
    );
  }
}
