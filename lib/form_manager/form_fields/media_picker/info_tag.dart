import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tetbee__base/models/common/stored_data.dart';
import 'package:tetbee__base/theme/theme_extension.dart';
import 'package:tetbee__base/utils/enums.dart';
import 'package:tetbee__base/utils/helper.dart';

class InfomationTag extends StatefulWidget {
  final String text;
  final bool tooltipMode;
  final Color? iconColor;
  const InfomationTag({
    super.key,
    required this.text,
    this.iconColor,
    this.tooltipMode = false,
  });

  @override
  State<InfomationTag> createState() => _InfomationTagState();
}

class _InfomationTagState extends State<InfomationTag> {
  @override
  Widget build(BuildContext context) {
    return widget.tooltipMode
        ? InkWell(
          onTap: () {
            showModalBottomSheet(
              showDragHandle: true,
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              context: context,
              builder:
                  (_) => Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Material(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      child: SafeArea(child: Text(widget.text)),
                    ),
                  ),
            );
          },
          child: Icon(
            Icons.info_outline_rounded,
            size: 25,
            color: widget.iconColor ?? Theme.of(context).baseTextColor,
          ),
        )
        : Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.info,
              size: 20,
              color: widget.iconColor ?? Theme.of(context).primaryColorDark,
            ),
            SizedBox(width: 5),
            Text(
              widget.text,
              style: Theme.of(context).textTheme.displayMedium!.copyWith(
                fontSize: 14,
                color: Theme.of(context).unselectedWidgetColor,
              ),
            ),
          ],
        );
  }
}

class NewInfomationTag extends StatelessWidget {
  final String text;
  final double? fontSize;
  const NewInfomationTag({super.key, required this.text, this.fontSize});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Helpers.getMQWidth(context: context),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.info,
            size: 20,
            color: Theme.of(context).baseTextColor.withOpacity(0.4),
          ),
          SizedBox(width: 5),
          Expanded(
            child: Text(
              text,
              style: Theme.of(context).textTheme.displaySmall!.copyWith(
                fontSize: fontSize,
                fontWeight: FontWeight.w700,
                color: Theme.of(context).baseTextColor.withOpacity(0.6),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

StoredData xFileToStoredData(XFile xFile, DataType dataType) => StoredData(
  userId: '',
  url: xFile.path,
  name: xFile.path.split('/').last, // ← 실제 파일 경로에서 이름 추출
  dataType: dataType,
  xFile: xFile,
);

StoredData fileToStoredData(File file, String dataPath) {
  String fileExtension = file.path.split('.').last;
  DataType dataType = fileExtension == 'pdf' ? DataType.pdf : DataType.doc;
  return StoredData(
    userId: '',
    url: XFile(file.path).path,
    name: XFile(file.path).name,
    dataPath: '$dataPath/',
    dataType: dataType,
    xFile: XFile(file.path),
  );
}
