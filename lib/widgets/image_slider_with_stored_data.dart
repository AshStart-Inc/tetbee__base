// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tetbee__base/models/common/stored_data.dart';
import 'package:tetbee__base/utils/helper.dart';
import 'package:tetbee__base/widgets/new_image_slider.dart';

class ImageSliderWithStoredData extends StatefulWidget {
  ImageSliderWithStoredData({
    Key? key,
    required this.images,
    this.height,
    this.width,
    this.boxheight,
    this.postedBy,
    this.postedTime,
    this.showSlider = true,
    this.borderRadius,
  }) : super(key: key);
  final Map<String, StoredData> images;
  final double? height;
  final double? width;
  final double? boxheight;
  final String? postedBy;
  final DateTime? postedTime;
  final bool? showSlider;
  final BorderRadiusGeometry? borderRadius;

  @override
  _ImageSliderWithStoredDataState createState() =>
      _ImageSliderWithStoredDataState();
}

class _ImageSliderWithStoredDataState extends State<ImageSliderWithStoredData> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    List<InkWell> imgList = [];
    widget.images.forEach((key, value) {
      imgList.add(
        InkWell(
          onTap:
              () => _buildZoomableImageList(
                context: context,
                imgURLs: widget.images,
                currentImageIndex: widget.images.keys.toList().indexOf(key),
                postedBy: widget.postedBy,
                postedTime: widget.postedTime,
              ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: widget.borderRadius ?? BorderRadius.circular(10),
                image: DecorationImage(
                  image: CachedNetworkImageProvider(value.url!),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      );
    });

    return !widget.showSlider!
        ? SizedBox(
          height: widget.height ?? 50,
          width: widget.width ?? 50,
          child: imgList.first,
        )
        : Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Center(
              child: CarouselSlider(
                items: imgList,
                options: CarouselOptions(
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  },
                  aspectRatio: 4 / 4,
                  initialPage: 0,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: false,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                    imgList.map((url) {
                      int index = imgList.indexOf(url);
                      return Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Container(
                          width: _current == index ? 16.0 : 8,
                          height: 8.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color:
                                _current == index
                                    ? Theme.of(context).cardColor
                                    : Theme.of(context).scaffoldBackgroundColor,
                          ),
                        ),
                      );
                    }).toList(),
              ),
            ),
          ],
        );
  }
}

_buildZoomableImageList({
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
    ),

    // CustomImageSlider(
    //   currentImageIndex: currentImageIndex,
    //   context: context,
    //   imgURLs: imgURLs,
    //   // postedTime: postedTime ?? DateTime.now(),
    //   // postedBy: postedBy!,
    // ),
  );
}
