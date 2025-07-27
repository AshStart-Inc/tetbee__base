// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, use_key_in_widget_constructors, avoid_function_literals_in_foreach_calls

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pinch_zoom/pinch_zoom.dart';
import 'package:tetbee__base/dialog/custom_dialog.dart';
import 'package:tetbee__base/models/common/stored_data.dart';
import 'package:tetbee__base/widgets/img_slider.dart';

class NewImageSlider extends StatefulWidget {
  final Map<String, StoredData> imgURLs;
  final int currentImageIndex;
  const NewImageSlider({
    Key? key,
    required this.currentImageIndex,
    required this.imgURLs,
  });

  @override
  State<NewImageSlider> createState() => _NewImageSliderState();
}

class _NewImageSliderState extends State<NewImageSlider> {
  bool _isFunctionBarOpened = true;
  bool isLoading = false;
  late int _currentImageIndex;
  late final PageController pageController;
  void tapScreen() {
    setState(() {
      _isFunctionBarOpened = !_isFunctionBarOpened;
    });
  }

  setLoading(bool loading) {
    setState(() {
      isLoading = loading;
    });
  }

  @override
  void initState() {
    super.initState();
    _currentImageIndex = widget.currentImageIndex + 1;
    pageController = PageController(initialPage: widget.currentImageIndex);
  }

  Future saveImage(List<StoredData> images) async {
    // setLoading(true);
    // List<Future> saveImages = [];
    // if (images.length == 1) {
    //   saveImages.add(saveImageFileInGallery(images.first));
    // } else {
    //   widget.imgURLs.values.forEach((e) {
    //     saveImages.add(saveImageFileInGallery(e));
    //   });
    // }
    // Future.wait(saveImages).then((value) {
    //   setLoading(false);
    //   showCustomSnackBar(context, 'Saved in Gallery.');
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              InkWell(
                onTap: tapScreen,
                child: PageView(
                  controller: pageController,
                  onPageChanged: (index) {
                    setState(() {
                      _currentImageIndex = index + 1;
                    });
                  },
                  children: [
                    ...widget.imgURLs.values
                        .map(
                          (e) => PinchZoom(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.black,
                                image: DecorationImage(
                                  image: CachedNetworkImageProvider(e.url!),
                                ),
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ],
                ),
              ),
              _isFunctionBarOpened
                  ? Column(
                    children: [
                      FunctionBar(
                        children: [
                          CustomArrowBackButton(context: context),
                          SizedBox(width: 80),
                          Column(
                            children: const [
                              Text(
                                '',
                                style: TextStyle(
                                  color: Colors.white60,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              // Text(
                              //   widget.postedTime == null
                              //       ? ""
                              //       : DateFormat.yMMMd()
                              //           .format(widget.postedTime),
                              //   style: TextStyle(
                              //     color: Colors.white,
                              //     fontWeight: FontWeight.bold,
                              //   ),
                              // )
                            ],
                          ),
                        ],
                      ),
                      Spacer(),
                      Text(
                        "$_currentImageIndex / ${widget.imgURLs.length} ",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: FunctionBar(
                          height: 80.0,
                          isTopBar: false,
                          children: [
                            SizedBox(width: 10),
                            IconButton(
                              onPressed: () {
                                if (widget.imgURLs.length == 1) {
                                  saveImage(widget.imgURLs.values.toList());
                                } else {
                                  showCustomFormBottomSheet(
                                    context: context,
                                    list: [
                                      BottoSheetItemModel(
                                        trailingWidget: Icon(
                                          Icons.download_rounded,
                                        ),
                                        text: 'Only current Image',
                                        onTap: () {
                                          saveImage([
                                            widget.imgURLs[(_currentImageIndex -
                                                    1)
                                                .toString()]!,
                                          ]);
                                        },
                                      ),
                                      BottoSheetItemModel(
                                        trailingWidget: Icon(
                                          Icons.download_outlined,
                                        ),
                                        text: 'All Images',
                                        onTap: () {
                                          saveImage(
                                            widget.imgURLs.values.toList(),
                                          );
                                        },
                                      ),
                                    ],
                                  );
                                }
                              },
                              icon: Icon(
                                Icons.download,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                  : Container(),
            ],
          ),
          // if (isLoading) SaveImageLoadingWidget(),
        ],
      ),
    );
  }
}
