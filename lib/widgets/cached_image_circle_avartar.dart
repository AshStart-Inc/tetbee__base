// ignore_for_file: depend_on_referenced_packages

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CahceImageCircleAvartar extends StatelessWidget {
  final double radius;
  final String? imageUrl;
  final String defaultImage;
  const CahceImageCircleAvartar({
    super.key,
    this.imageUrl,
    this.radius = 20,
    required this.defaultImage,
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
          backgroundImage:
              imageUrl == null
                  ? AssetImage(defaultImage) as ImageProvider
                  : CachedNetworkImageProvider(imageUrl!),
        ),
      ],
    );
  }
}
