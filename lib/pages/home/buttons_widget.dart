import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wootasali/pages/home/controller/home_controller.dart';
import 'package:wootasali/utils/theme/color_helper.dart';

class ButtonsWidget extends StatelessWidget {
  const ButtonsWidget({Key? key, required this.controller}) : super(key: key);
  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width * 0.43,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              InkWell(
                onTap: () {
                  Get.snackbar(
                    "Woo",
                    "Compare",
                    snackPosition: SnackPosition.TOP,
                    backgroundColor: ColorHelper.primaryColor,
                    colorText: ColorHelper.backgroundColor,
                    borderWidth: Get.context?.width,
                    maxWidth: Get.context?.width,
                    margin: const EdgeInsets.all(0),
                    borderRadius: 8,
                    snackStyle: SnackStyle.GROUNDED,
                    duration: const Duration(seconds: 12),
                    isDismissible: true,
                    onTap: (x) {
                      Get.back();
                    },
                  );
                },
                child: Container(
                  width: 62,
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
                onTap: () {
                  Get.snackbar(
                    "Woo",
                    "Call",
                    snackPosition: SnackPosition.TOP,
                    backgroundColor: ColorHelper.primaryColor,
                    colorText: ColorHelper.backgroundColor,
                    borderWidth: Get.context?.width,
                    maxWidth: Get.context?.width,
                    margin: const EdgeInsets.all(0),
                    borderRadius: 8,
                    snackStyle: SnackStyle.GROUNDED,
                    duration: const Duration(seconds: 12),
                    isDismissible: true,
                    onTap: (x) {
                      Get.back();
                    },
                  );
                },
                child: Container(
                  width: 62,
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
                onTap: () {
                  Get.snackbar(
                    "Woo",
                    "Report",
                    snackPosition: SnackPosition.TOP,
                    backgroundColor: ColorHelper.primaryColor,
                    colorText: ColorHelper.backgroundColor,
                    borderWidth: Get.context?.width,
                    maxWidth: Get.context?.width,
                    margin: const EdgeInsets.all(0),
                    borderRadius: 8,
                    snackStyle: SnackStyle.GROUNDED,
                    duration: const Duration(seconds: 12),
                    isDismissible: true,
                    onTap: (x) {
                      Get.back();
                    },
                  );
                },
                child: Container(
                  width: 62,
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
            width: 8,
          ),
          Column(
            children: [
              const SizedBox(height: 2),
              InkWell(
                onTap: () {
                  controller.like();
                },
                child: Container(
                  width: 62,
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
                onTap: () {
                  controller.dislike();
                },
                child: Container(
                  width: 62,
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
                onTap: () {
                  Get.snackbar(
                    "Woo",
                    "Request for advise",
                    snackPosition: SnackPosition.TOP,
                    backgroundColor: ColorHelper.primaryColor,
                    colorText: ColorHelper.backgroundColor,
                    borderWidth: Get.context?.width,
                    maxWidth: Get.context?.width,
                    margin: const EdgeInsets.all(0),
                    borderRadius: 8,
                    snackStyle: SnackStyle.GROUNDED,
                    duration: const Duration(seconds: 12),
                    isDismissible: true,
                    onTap: (x) {
                      Get.back();
                    },
                  );
                },
                child: Container(
                  width: 62,
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
          const Spacer(),
          SizedBox(
            child: Column(
              children: [
                const SizedBox(
                  height: 4,
                ),
                GetBuilder<HomeController>(
                  builder: (co) => Text(
                    "${co.carsData.value.data![controller.categoryIndex.value].cars![controller.carsIndex.value].likes ?? 0}",
                    style: const TextStyle(
                      color: ColorHelper.highMutedColor,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                GetBuilder<HomeController>(
                  builder: (co) => Text(
                    "${co.carsData.value.data![controller.categoryIndex.value].cars![controller.carsIndex.value].dislikes ?? 0}",
                    style: const TextStyle(
                      color: ColorHelper.highMutedColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
