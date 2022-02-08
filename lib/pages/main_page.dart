import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wootasali/common/app_bar.dart';
import 'package:wootasali/pages/home/arrow_title_widget.dart';
import 'package:wootasali/pages/home/buttons_widget.dart';
import 'package:wootasali/pages/home/controller/home_controller.dart';
import 'package:wootasali/pages/home/data_table.dart';
import 'package:wootasali/pages/home/filter_widget.dart';
import 'package:wootasali/pages/home/image_previewer.dart';
import 'package:wootasali/utils/theme/color_helper.dart';

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
            GetBuilder<HomeController>(
              builder: (co) => ArrowTitleWidget(
                title: co.carsData.value.data![controller.categoryIndex.value]
                    .cars![controller.carsIndex.value].title!,
              ),
            ),
            const SizedBox(height: 24),
            GetBuilder<HomeController>(
              builder: (co) => ImageScroller(
                controller: co,
                images: controller
                    .carsData
                    .value
                    .data![controller.categoryIndex.value]
                    .cars![controller.carsIndex.value]
                    .images!,
              ),
            ),
            const SizedBox(height: 14),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GetBuilder<HomeController>(
                  builder: (co) => DataTableWidget(
                    data: co
                        .carsData
                        .value
                        .data![controller.categoryIndex.value]
                        .cars![controller.carsIndex.value],
                  ),
                ),
                Center(
                  child: ButtonsWidget(
                    controller: controller,
                  ),
                )
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
            FilterWidget(
              controller: controller,
            ),
            const SizedBox(height: 8),
            GetBuilder<HomeController>(
              builder: (co) => ImageScroller(
                controller: co,
                height: 120,
                width: 50,
                scroll: true,
                isPreview: false,
                images: controller.getCategoryImages(),
              ),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
