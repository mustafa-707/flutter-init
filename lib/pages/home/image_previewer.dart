import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wootasali/pages/home/controller/home_controller.dart';
import 'package:wootasali/utils/data/cars.dart';
import 'package:wootasali/utils/lang/lang_service.dart';
import 'package:wootasali/utils/theme/color_helper.dart';

class ImageScroller extends StatelessWidget {
  const ImageScroller({
    Key? key,
    required this.controller,
    required this.index,
    this.height = 180.0,
    this.width = 98,
  }) : super(key: key);
  final int index;
  final double? height;
  final double? width;

  final HomeController controller;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 25,
        ),
        CarouselSlider(
          options: CarouselOptions(
            enlargeCenterPage: false,
            viewportFraction: width! / 100,
            height: height,
            enableInfiniteScroll: true,
            disableCenter: true,
            onPageChanged: (index, reason) {
              controller.imageIndex.value = index;
            },
          ),
          carouselController: controller.carouselController,
          items: (CarsListData.carsData[index]['image'] as List<String>)
              .asMap()
              .entries
              .map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: const BoxDecoration(
                    color: ColorHelper.primaryColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: GestureDetector(
                      onTap: () {
                        controller.previewImage(i.value);
                      },
                      child: CachedNetworkImage(
                        imageUrl: i.value,
                        fit: BoxFit.cover,
                        width: Get.width,
                        errorWidget: (context, url, error) {
                          return Container(
                            color: ColorHelper.onPrimary,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.warning,
                                  size: 12,
                                  color: ColorHelper.primaryColor,
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                Flexible(
                                  child: Text(
                                    "car img not found".tr,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: ColorHelper.secondaryColor,
                                      fontSize: 12,
                                      fontFamily: LocalizationService
                                          .fontfamilyByLocale,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                );
              },
            );
          }).toList(),
        ),
        // const SizedBox(
        //   height: 12,
        // ),
        // Obx(
        //   () => Row(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: (CarsListData.carsData[index]['image'] as List<String>)
        //         .asMap()
        //         .entries
        //         .map(
        //       (i) {
        //         return GestureDetector(
        //           onTap: () =>
        //               controller.carouselController.animateToPage(i.key),
        //           child: Container(
        //             width: 5.0,
        //             height: 5.0,
        //             margin: const EdgeInsets.symmetric(
        //                 vertical: 8.0, horizontal: 4.0),
        //             decoration: BoxDecoration(
        //               shape: BoxShape.circle,
        //               color: (Theme.of(context).brightness == Brightness.dark
        //                       ? ColorHelper.mutedColor
        //                       : ColorHelper.mutedColor)
        //                   .withOpacity(
        //                 controller.imageIndex.value == i.key ? 0.9 : 0.4,
        //               ),
        //             ),
        //           ),
        //         );
        //       },
        //     ).toList(),
        //   ),
        // ),
      ],
    );
  }
}