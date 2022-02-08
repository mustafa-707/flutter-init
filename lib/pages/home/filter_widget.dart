import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wootasali/pages/home/controller/home_controller.dart';
import 'package:wootasali/utils/theme/color_helper.dart';
import 'package:wootasali/utils/theme/images_helper.dart';

class FilterWidget extends StatelessWidget {
  const FilterWidget({Key? key, required this.controller}) : super(key: key);
  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 8),
        GestureDetector(
          onTap: () {
            controller.dropDown.value = !controller.dropDown.value;
          },
          child: Container(
            color: ColorHelper.secondaryColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  ImageHelper.filter,
                  width: 100,
                ),
                Obx(
                  () => Transform.rotate(
                    angle: controller.dropDown.value ? 33 / 3 : 33,
                    child: const Icon(
                      Icons.double_arrow,
                      color: ColorHelper.backgroundColor,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(1.6),
          child: Obx(
            () => AnimatedContainer(
              duration: const Duration(milliseconds: 600),
              curve: Curves.fastOutSlowIn,
              height: controller.dropDown.value ? 260 : 0,
              color: ColorHelper.secondaryColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 14),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          if (controller.filterIndex1.value == 0) {
                          } else if (controller.filterIndex2.value != 0) {
                          } else {
                            controller.filterIndex1.value =
                                controller.filterIndex1.value - 1;
                            controller.categoryIndex.value =
                                controller.filterIndex1.value;
                            controller.searchByDate();
                            controller.searchByUse();
                          }
                        },
                        child: Icon(
                          Icons.chevron_left_rounded,
                          color: ColorHelper.backgroundColor.withOpacity(0.7),
                          size: 48,
                        ),
                      ),
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: ColorHelper.backgroundColor,
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            3,
                            (index) => InkWell(
                              onTap: () {
                                controller.filterIndex1.value = index;
                                controller.categoryIndex.value = index;
                                controller.searchByDate();
                                controller.searchByUse();

                                controller.filterIndex2.value = 0;
                              },
                              child: Container(
                                margin:
                                    const EdgeInsets.only(left: 8, right: 8),
                                width: Get.width * 0.197,
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FittedBox(
                                        child: Text(
                                          controller.carsData.value.data![index]
                                                  .category ??
                                              "",
                                          style: const TextStyle(
                                            color: ColorHelper.textColor,
                                          ),
                                        ),
                                      ),
                                      controller.filterIndex1.value != (index)
                                          ? const SizedBox()
                                          : Container(
                                              height: 2,
                                              width: 60,
                                              color: ColorHelper.onPrimary,
                                            )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          if (controller.filterIndex1.value == 2) {
                          } else if (controller.filterIndex2.value != 0) {
                          } else {
                            controller.filterIndex1.value =
                                controller.filterIndex1.value + 1;
                            controller.categoryIndex.value =
                                controller.filterIndex1.value;
                            controller.searchByDate();
                            controller.searchByUse();
                          }
                        },
                        child: Icon(
                          Icons.chevron_right_rounded,
                          color: ColorHelper.backgroundColor.withOpacity(0.7),
                          size: 48,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          if (controller.filterIndex2.value == 3) {
                          } else if (controller.filterIndex1.value != -1) {
                          } else {
                            controller.filterIndex2.value =
                                controller.filterIndex2.value - 1;
                            controller.categoryIndex.value =
                                controller.filterIndex2.value;
                            controller.searchByDate();
                            controller.searchByUse();
                          }
                        },
                        child: Icon(
                          Icons.chevron_left_rounded,
                          color: ColorHelper.backgroundColor.withOpacity(0.7),
                          size: 48,
                        ),
                      ),
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: ColorHelper.backgroundColor,
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            3,
                            (index) => InkWell(
                              onTap: () {
                                controller.filterIndex2.value = index + 3;
                                controller.categoryIndex.value = index + 3;
                                controller.searchByDate();
                                controller.searchByUse();

                                controller.filterIndex1.value = -1;
                              },
                              child: Container(
                                margin:
                                    const EdgeInsets.only(left: 8, right: 8),
                                width: Get.width * 0.197,
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FittedBox(
                                        child: Text(
                                          controller.carsData.value
                                                  .data![index + 3].category ??
                                              "",
                                          style: const TextStyle(
                                            color: ColorHelper.textColor,
                                          ),
                                        ),
                                      ),
                                      controller.filterIndex2.value !=
                                              (index + 3)
                                          ? const SizedBox()
                                          : Container(
                                              height: 2,
                                              width: 60,
                                              color: ColorHelper.onPrimary,
                                            )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          if (controller.filterIndex2.value == 5) {
                          } else if (controller.filterIndex1.value != -1) {
                          } else {
                            controller.filterIndex2.value =
                                controller.filterIndex2.value + 1;
                            controller.categoryIndex.value =
                                controller.filterIndex2.value;
                            controller.searchByDate();
                            controller.searchByUse();
                          }
                        },
                        child: Icon(
                          Icons.chevron_right_rounded,
                          color: ColorHelper.backgroundColor.withOpacity(0.7),
                          size: 48,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          if (controller.filterIndex3.value != 0) {
                            controller.filterIndex3.value =
                                controller.filterIndex3.value - 1;
                            controller.searchByDate();
                            controller.searchByUse();
                          }
                        },
                        child: Icon(
                          Icons.chevron_left_rounded,
                          color: ColorHelper.backgroundColor.withOpacity(0.7),
                          size: 48,
                        ),
                      ),
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: ColorHelper.backgroundColor,
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            3,
                            (index) => InkWell(
                              onTap: () {
                                controller.filterIndex3.value = index;
                                controller.searchByDate();
                                controller.searchByUse();
                              },
                              child: Container(
                                margin:
                                    const EdgeInsets.only(left: 8, right: 8),
                                width: Get.width * 0.197,
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FittedBox(
                                        child: Text(
                                          controller.carsData.value.data![index]
                                                  .cars?.first.date ??
                                              "",
                                          style: const TextStyle(
                                            color: ColorHelper.textColor,
                                          ),
                                        ),
                                      ),
                                      controller.filterIndex3.value != (index)
                                          ? const SizedBox()
                                          : Container(
                                              height: 2,
                                              width: 60,
                                              color: ColorHelper.onPrimary,
                                            )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          if (controller.filterIndex3.value != 2) {
                            controller.filterIndex3.value =
                                controller.filterIndex3.value + 1;
                            controller.searchByDate();
                            controller.searchByUse();
                          }
                        },
                        child: Icon(
                          Icons.chevron_right_rounded,
                          color: ColorHelper.backgroundColor.withOpacity(0.7),
                          size: 48,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          if (controller.filterIndex4.value == 1) {
                            controller.filterIndex4.value =
                                controller.filterIndex4.value - 1;
                            controller.searchByDate();
                            controller.searchByUse();
                          }
                        },
                        child: Icon(
                          Icons.chevron_left_rounded,
                          color: ColorHelper.backgroundColor.withOpacity(0.7),
                          size: 48,
                        ),
                      ),
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: ColorHelper.backgroundColor,
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            2,
                            (index) => InkWell(
                              onTap: () {
                                controller.filterIndex4.value = index;
                                controller.searchByDate();
                                controller.searchByUse();
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Center(
                                    child: Container(
                                      margin: EdgeInsets.only(
                                          left: Get.width * 0.083,
                                          right: Get.width * 0.083),
                                      child: FittedBox(
                                        child: Text(
                                          index == 0
                                              ? "New/almost new"
                                              : "Used",
                                          style: const TextStyle(
                                            color: ColorHelper.textColor,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  controller.filterIndex4.value != (index)
                                      ? const SizedBox()
                                      : Container(
                                          height: 2,
                                          width: 60,
                                          color: ColorHelper.onPrimary,
                                        )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          if (controller.filterIndex4.value == 0) {
                            controller.filterIndex4.value =
                                controller.filterIndex4.value + 1;
                            controller.searchByDate();
                            controller.searchByUse();
                          }
                        },
                        child: Icon(
                          Icons.chevron_right_rounded,
                          color: ColorHelper.backgroundColor.withOpacity(0.7),
                          size: 48,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 14),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
