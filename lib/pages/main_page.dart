import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wootasali/common/app_bar.dart';
import 'package:wootasali/pages/home/arrow_title_widget.dart';
import 'package:wootasali/pages/home/buttons_widget.dart';
import 'package:wootasali/pages/home/controller/home_controller.dart';
import 'package:wootasali/pages/home/data_table.dart';
import 'package:wootasali/pages/home/image_previewer.dart';
import 'package:wootasali/utils/data/cars.dart';
import 'package:wootasali/utils/theme/color_helper.dart';
import 'package:wootasali/utils/theme/images_helper.dart';

class MainPage extends StatelessWidget {
  MainPage({Key? key}) : super(key: key);
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBar(),
      body: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 24),
          const ArrowTitleWidget(),
          ImageScroller(
            controller: controller,
            index: 1,
          ),
          const SizedBox(height: 14),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              DataTableWidget(
                index: 1,
              ),
              ButtonsWidget()
            ],
          ),
          const SizedBox(height: 14),
          const Text(
            "Search Other Cars",
            style: TextStyle(
              color: ColorHelper.primaryColor,
              fontSize: 24,
            ),
          ),
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
            child: Container(
              color: ColorHelper.secondaryColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 14),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.chevron_left_rounded,
                        color: ColorHelper.backgroundColor.withOpacity(0.7),
                        size: 48,
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
                            CarsListData.carsData.length,
                            (index) => Container(
                              margin: const EdgeInsets.only(left: 8, right: 8),
                              width: 88,
                              child: Center(
                                child: Text(
                                  CarsListData.carsData[index]['carType'],
                                  style: const TextStyle(
                                    color: ColorHelper.textColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Icon(
                        Icons.chevron_right_rounded,
                        color: ColorHelper.backgroundColor.withOpacity(0.7),
                        size: 48,
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.chevron_left_rounded,
                        color: ColorHelper.backgroundColor.withOpacity(0.7),
                        size: 48,
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
                            CarsListData.carsData.length,
                            (index) => Container(
                              margin: const EdgeInsets.only(left: 8, right: 8),
                              width: 88,
                              child: Center(
                                child: Text(
                                  CarsListData.carsData[index]['carType'],
                                  style: const TextStyle(
                                    color: ColorHelper.textColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Icon(
                        Icons.chevron_right_rounded,
                        color: ColorHelper.backgroundColor.withOpacity(0.7),
                        size: 48,
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.chevron_left_rounded,
                        color: ColorHelper.backgroundColor.withOpacity(0.7),
                        size: 48,
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
                            CarsListData.carsData.length,
                            (index) => Container(
                              margin: const EdgeInsets.only(left: 8, right: 8),
                              width: 88,
                              child: Center(
                                child: Text(
                                  CarsListData.carsData[index]['carType'],
                                  style: const TextStyle(
                                    color: ColorHelper.textColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Icon(
                        Icons.chevron_right_rounded,
                        color: ColorHelper.backgroundColor.withOpacity(0.7),
                        size: 48,
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.chevron_left_rounded,
                        color: ColorHelper.backgroundColor.withOpacity(0.7),
                        size: 48,
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
                            CarsListData.carsData.length,
                            (index) => Container(
                              margin: const EdgeInsets.only(left: 8, right: 8),
                              width: 88,
                              child: Center(
                                child: Text(
                                  CarsListData.carsData[index]['carType'],
                                  style: const TextStyle(
                                    color: ColorHelper.textColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Icon(
                        Icons.chevron_right_rounded,
                        color: ColorHelper.backgroundColor.withOpacity(0.7),
                        size: 48,
                      ),
                    ],
                  ),
                  const SizedBox(height: 14),
                ],
              ),
            ),
          ),
          ImageScroller(
            controller: controller,
            index: 1,
            height: 100,
            width: 50,
          ),
          const SizedBox(height: 8),
        ],
      )),
    );
  }
}
