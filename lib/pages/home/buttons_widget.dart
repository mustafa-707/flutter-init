import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wootasali/utils/theme/color_helper.dart';

class ButtonsWidget extends StatelessWidget {
  const ButtonsWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width * 0.5,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  width: 65,
                  height: 50,
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: ColorHelper.onPrimary,
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "   ؟",
                        style: TextStyle(
                          color: ColorHelper.textColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          height: 1.3,
                        ),
                      ),
                      Text(
                        "Compare",
                        style: TextStyle(
                          color: ColorHelper.textColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 4),
              InkWell(
                onTap: () {},
                child: Container(
                  width: 65,
                  height: 35,
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: ColorHelper.onPrimary3,
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: const Center(
                      child: Text(
                    "Call",
                    style: TextStyle(
                      color: ColorHelper.backgroundColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  )),
                ),
              ),
              const SizedBox(height: 2),
              InkWell(
                onTap: () {},
                child: Container(
                  width: 65,
                  height: 22,
                  decoration: BoxDecoration(
                    color: ColorHelper.highMutedColor,
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: const Center(
                      child: Text(
                    "Report !",
                    style: TextStyle(
                      color: ColorHelper.backgroundColor,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 12,
          ),
          Column(
            children: [
              const SizedBox(height: 2),
              InkWell(
                onTap: () {},
                child: Container(
                  width: 65,
                  height: 22,
                  decoration: BoxDecoration(
                    color: ColorHelper.onPrimary,
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: const Center(
                      child: Text(
                    "Like",
                    style: TextStyle(
                      color: ColorHelper.backgroundColor,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                ),
              ),
              const SizedBox(height: 2),
              InkWell(
                onTap: () {},
                child: Container(
                  width: 65,
                  height: 22,
                  decoration: BoxDecoration(
                    color: ColorHelper.onPrimary,
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: const Center(
                      child: Text(
                    "Dislike",
                    style: TextStyle(
                      color: ColorHelper.backgroundColor,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                ),
              ),
              const SizedBox(height: 4),
              InkWell(
                onTap: () {},
                child: Container(
                  width: 65,
                  height: 61,
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: ColorHelper.onPrimary2,
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "?",
                        style: TextStyle(
                          color: ColorHelper.backgroundColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "Request for advise",
                        style: TextStyle(
                            color: ColorHelper.backgroundColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            children: const [
              Text(
                "1000",
                style: TextStyle(
                  color: ColorHelper.highMutedColor,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "1000",
                style: TextStyle(
                  color: ColorHelper.highMutedColor,
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 6,
          ),
        ],
      ),
    );
  }
}
