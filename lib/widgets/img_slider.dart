// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:tetbee__base/models/common/stored_data.dart';
import 'package:tetbee__base/utils/helper.dart';
import 'package:tetbee__base/widgets/new_image_slider.dart';

buildZoomableImageList({
  required Map<String, StoredData> imgURLs,
  required BuildContext context,
  required int currentImageIndex,
  String? postedBy,
  DateTime? postedTime,
}) {
  Helpers.materialPageRoute(
    context: context,
    destination: NewImageSlider(
      currentImageIndex: currentImageIndex,
      imgURLs: imgURLs,
      // postedTime: postedTime ?? DateTime.now(),
      // postedBy: postedBy!,
    ),
  );
}

class CustomArrowBackButton extends StatelessWidget {
  const CustomArrowBackButton({
    Key? key,
    required this.context,
    this.width = 50.0,
    this.height = 100.0,
    this.color = Colors.white60,
    this.onTap,
  }) : super(key: key);
  final double height;
  final double width;
  final BuildContext context;
  final Color color;
  final Function? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (onTap == null) {
          Navigator.pop(context);
        } else {
          onTap?.call();
        }
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Container(
          alignment: Alignment.centerLeft,
          width: width,
          height: height,
          child: Icon(Icons.arrow_back_ios_outlined, color: color),
        ),
      ),
    );
  }
}

class FunctionBar extends StatelessWidget {
  const FunctionBar({
    Key? key,
    this.height = 100.0,
    required this.children,
    this.isTopBar = true,
  }) : super(key: key);

  final double height;
  final List<Widget> children;
  final bool isTopBar;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      color: Colors.black.withOpacity(0.8),
      child: SafeArea(
        bottom: !isTopBar,
        top: isTopBar,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.start,
          children: children,
        ),
      ),
    );
  }
}
