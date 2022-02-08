import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';
import 'package:wootasali/common/images/controller/image_controller.dart';
import 'package:wootasali/pages/home/model/car_model.dart';
import 'package:wootasali/utils/data/cars.dart';

class HomeController extends GetxController {
  RxInt imageIndex = 0.obs;
  RxBool dropDown = false.obs;
  final CarouselController carouselController = CarouselController();
  Rx<Cars> carsData = Cars().obs;
  RxInt filterIndex1 = 0.obs;
  RxInt filterIndex2 = 0.obs;
  RxInt filterIndex3 = 0.obs;
  RxInt filterIndex4 = 0.obs;

  RxInt categoryIndex = 0.obs;
  RxInt carsIndex = 0.obs;

  void previewImage(String imageUrl) {
    ImageController().imagePreview(
      imageUrl: imageUrl,
    );
  }

  void like() {
    carsData.value.data![categoryIndex.value].cars![carsIndex.value].likes =
        (carsData.value.data![categoryIndex.value].cars![carsIndex.value]
                    .likes ??
                0) +
            1;
    update();
  }

  void dislike() {
    carsData.value.data![categoryIndex.value].cars![carsIndex.value].dislikes =
        (carsData.value.data![categoryIndex.value].cars![carsIndex.value]
                    .dislikes ??
                0) +
            1;
    update();
  }

  void searchByDate() {
    carsData.value.data![categoryIndex.value].cars
        ?.asMap()
        .forEach((key, value) {
      if (filterIndex3.value == 0) {
        if (value.date?.contains("2010-2012") ?? false) {
          carsIndex.value = key;
        }
      } else if (filterIndex3.value == 1) {
        if (value.date?.contains("2012-2013") ?? false) {
          carsIndex.value = key;
        }
      } else if (filterIndex3.value == 3) {
        if (value.date?.contains("2013-2014") ?? false) {
          carsIndex.value = key;
        }
      }
    });
    update();
  }

  void searchByUse() {
    carsData.value.data![categoryIndex.value].cars
        ?.asMap()
        .forEach((key, value) {
      if (filterIndex4.value == 0) {
        if (value.use?.contains("new") ?? false) {
          carsIndex.value = key;
        }
      } else if (filterIndex4.value == 1) {
        if (value.date?.contains("used") ?? false) {
          carsIndex.value = key;
        }
      }
    });
    update();
  }

  List<String> getCategoryImages() {
    List<String> list = [];
    carsData.value.data![categoryIndex.value].cars?.forEach((element) {
      list.add(element.images?.first ?? "");
    });
    return list;
  }

  @override
  void onInit() {
    carsData.value = Cars.fromJson(CarsListData.carsData);
    super.onInit();
  }
}
