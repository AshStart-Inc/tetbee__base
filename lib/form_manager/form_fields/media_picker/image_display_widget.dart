import 'dart:io';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tetbee__base/models/common/stored_data.dart';
import 'package:tetbee__base/theme/theme_extension.dart';
import 'package:tetbee__base/utils/enums.dart';
import 'package:tetbee__base/widgets/buttons/circle_icon_button.dart';

class ImageDisplayWidget extends StatelessWidget {
  final StoredData storedData;
  final int index;
  final double baseHeight;
  final bool readOnly;
  final Function()? onDelete;
  const ImageDisplayWidget({
    super.key,
    this.index = 0,
    required this.storedData,
    this.baseHeight = 100,
    this.readOnly = false,
    this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    final bool isFirstItem = index == 0;
    final double baseSize = isFirstItem ? baseHeight : baseHeight - 20;
    return storedData.dataType == DataType.video
        ? Icon(
          Icons.video_collection_rounded,
          color: Theme.of(context).primaryColor,
          size: baseSize,
        )
        : Padding(
          padding: EdgeInsets.symmetric(
            vertical: isFirstItem ? 10 : 20,
            horizontal: 5,
          ),
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              SizedBox(
                height: baseSize,
                width: baseSize,
                child:
                    storedData.xFile == null
                        ? Container(
                          height: baseSize,
                          width: baseSize,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 3,
                              color: Theme.of(
                                context,
                              ).baseTextColor.withOpacity(0.4),
                            ),
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: CachedNetworkImageProvider(
                                storedData.url!,
                              ),
                            ),
                          ),
                        )
                        : Image.file(
                          File(storedData.xFile!.path),
                          fit: BoxFit.cover,
                        ),
              ),
              if (!readOnly && onDelete != null)
                CircleIconButton(
                  radius: 15,
                  onTap: () {
                    onDelete!.call();
                  },
                  iconData: Icons.delete,
                ),
            ],
          ),
        );
  }
}
