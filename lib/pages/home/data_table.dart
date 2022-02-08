import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wootasali/pages/home/model/car_model.dart';
import 'package:wootasali/utils/theme/color_helper.dart';

class DataTableWidget extends StatelessWidget {
  const DataTableWidget({Key? key, required this.data}) : super(key: key);
  final Car data;
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
                          ? data.name!
                          : i == 1
                              ? data.date!
                              : i == 2
                                  ? data.type!
                                  : data.gear!,
                      style: const TextStyle(
                        color: ColorHelper.textColor,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    i == 0
                        ? data.price! + " " + data.currancy!
                        : i == 1
                            ? data.distance!
                            : i == 2
                                ? data.version!
                                : data.petrol!,
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
