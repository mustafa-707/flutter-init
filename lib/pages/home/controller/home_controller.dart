import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';
import 'package:wootasali/common/images/controller/image_controller.dart';

class HomeController extends GetxController {
  RxInt imageIndex = 0.obs;
  RxInt dataIndex = 0.obs;
  RxBool dropDown = false.obs;
  final CarouselController carouselController = CarouselController();

  void previewImage(String imageUrl) {
    ImageController().imagePreview(
      imageUrl: imageUrl,
    );
  }
}
