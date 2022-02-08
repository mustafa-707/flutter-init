import 'package:flutter/material.dart';
import 'package:wootasali/utils/theme/color_helper.dart';

class WooProgressIndicator extends StatelessWidget {
  const WooProgressIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Container(
            height: 61,
            width: 61,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: const BorderRadius.all(
                Radius.circular(100),
              ),
              border: Border.all(
                color: ColorHelper.primaryColor,
              ),
            ),
          ),
        ),
        const Center(
          child: SizedBox(
            height: 60,
            width: 60,
            child: CircularProgressIndicator(
              strokeWidth: 2.0,
              color: ColorHelper.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
