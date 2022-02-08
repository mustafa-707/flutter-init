import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wootasali/common/images/controller/image_controller.dart';

class ImageViewer extends StatelessWidget {
  final String? imageUrl;
  final double? imageWidth;
  final double? imageHeight;
  final bool? isSquare;
  ImageViewer({
    Key? key,
    this.imageUrl,
    this.imageWidth,
    this.imageHeight,
    this.isSquare = false,
  }) : super(key: key);
  final ImageController controller = Get.put(ImageController());

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: imageWidth ?? 120,
      height: imageHeight ?? 120,
      child: Stack(
        children: [
          GestureDetector(
            onTap: () {
              controller.imagePreview(imageUrl: imageUrl ?? "");
            },
            child: SizedBox(
                width: imageWidth,
                height: imageHeight,
                child: isSquare ?? false
                    ? ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: CachedNetworkImage(
                          imageUrl: "$imageUrl",
                          fit: BoxFit.cover,
                        ),
                      )
                    : ClipOval(
                        child: CachedNetworkImage(
                          imageUrl: "$imageUrl",
                          fit: BoxFit.cover,
                        ),
                      )),
          ),
        ],
      ),
    );
  }
}
