import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photo_view/photo_view.dart';

class ImageController extends GetxController {
  void imagePreview({String? imageUrl}) {
    Get.generalDialog(
      barrierDismissible: true,
      barrierLabel: "",
      pageBuilder: (context, animation, secondaryAnimation) => Stack(
        children: [
          SafeArea(
            child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: const Icon(
                  Icons.close,
                  color: Colors.white,
                )),
          ),
          Dialog(
            elevation: 0,
            backgroundColor: Colors.transparent,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7.0)),
            child: SizedBox(
              height: 280,
              child: PhotoView(
                backgroundDecoration:
                    const BoxDecoration(color: Colors.transparent),
                imageProvider: NetworkImage(
                  imageUrl ?? "",
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
