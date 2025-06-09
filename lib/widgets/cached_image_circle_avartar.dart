// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';

class CahceImageCircleAvartar extends StatelessWidget {
  final double radius;
  final Map<String, dynamic>? imgUrls;
  final String? singleImg;
  const CahceImageCircleAvartar({
    super.key,
    this.imgUrls,
    this.singleImg,
    this.radius = 20,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CircleAvatar(
          backgroundColor: Theme.of(context).primaryColorDark,
          radius: radius + 2,
        ),
        CircleAvatar(
          radius: radius,
          // backgroundImage:
          // imgUrls == null && singleImg == null
          //     ? const AssetImage(AppConstats.tetbeePlaceDefaultImage)
          //         as ImageProvider
          //     : singleImg != null
          //     ? CachedNetworkImageProvider(singleImg!)
          //     : imgUrls!.isEmpty
          //     ? null
          //     : CachedNetworkImageProvider(imgUrls!.keys.first),
        ),
      ],
    );
  }
}
