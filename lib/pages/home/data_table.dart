import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wootasali/utils/data/cars.dart';
import 'package:wootasali/utils/theme/color_helper.dart';

class DataTableWidget extends StatelessWidget {
  const DataTableWidget({Key? key, required this.index}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width * 0.47,
      child: Column(
        children: List.generate(
          4,
          (int i) => Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(width: 12),
                  SizedBox(
                    width: 90,
                    child: Text(
                      i == 0
                          ? CarsListData.carsData[index]['name']
                          : i == 1
                              ? CarsListData.carsData[index]['date']
                              : i == 2
                                  ? CarsListData.carsData[index]['type']
                                  : CarsListData.carsData[index]['gear'],
                      style: const TextStyle(
                        color: ColorHelper.textColor,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    i == 0
                        ? CarsListData.carsData[index]['price'] +
                            " " +
                            CarsListData.carsData[index]['currancy']
                        : i == 1
                            ? CarsListData.carsData[index]['distance']
                            : i == 2
                                ? CarsListData.carsData[index]['version']
                                : CarsListData.carsData[index]['petrol'],
                    style: TextStyle(
                      color: (i == 0)
                          ? ColorHelper.onPrimary
                          : ColorHelper.textColor,
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 4),
                color: ColorHelper.mutedColor,
                height: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
